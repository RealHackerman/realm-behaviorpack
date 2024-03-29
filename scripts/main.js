import { world, system } from "@minecraft/server"

system.afterEvents.scriptEventReceive.subscribe(event => {
  if (event.id==="artifact:poseidons_trident_use") {
    system.run(() => {
      const player = event.sourceEntity;
      let direction = player.getViewDirection();
      let directionMultiplier = 1/Math.sqrt((direction.x)**2+(direction.y)**2+(direction.z)**2);
      direction = {
          x: direction.x*directionMultiplier,
          y: direction.y*directionMultiplier,
          z: direction.z*directionMultiplier
      }
      player.applyKnockback(direction.x, direction.z, 30, direction.y*5);
    });
    return;
  }
  if (event.id==="artifact:yeetus_theetus_use") {
    system.run(() => {
      const player = event.sourceEntity;
      const attacker = world.getPlayers({scoreOptions: [{
        "objective": "kb_time",
        "minScore": 1,
      }]})[0];
      let direction = {
        x: player.location.x - attacker.location.x,
        y: player.location.y - attacker.location.y,
        z: player.location.z - attacker.location.z
      };
      let directionMultiplier = 1/Math.sqrt((direction.x)**2+(direction.y)**2+(direction.z)**2);
      direction = {
        x: direction.x*directionMultiplier,
        y: direction.y*directionMultiplier,
        z: direction.z*directionMultiplier
      };
      let signY = Math.sign(direction.y);
      let absY = Math.abs(direction.y);
      direction.y = (0.33*(((absY+1)**3)-1))+0.1
      direction.y *= signY;
      player.applyKnockback(direction.x, direction.z, 6, direction.y);
    });
    return;
  }
  if (event.id==="artifact:steed_summoner_use") {
    system.run(() => {
      const player = event.sourceEntity;
      let cooldown = world.scoreboard.getObjective("steed_cooldown").getScores()[0].score;
      if (cooldown && cooldown > 0) {
        let cooldownSeconds = Math.floor(cooldown/20);
        let cooldownMinutes = Math.floor(cooldownSeconds/60);
        let cooldownMsg = cooldownMinutes ? cooldownMinutes + "m " + cooldownSeconds % 60 + "s" : cooldownSeconds + "s";
        player.sendMessage("Item on cooldown for another " + cooldownMsg);
        return;
      }
      player.runCommand("scoreboard players set @e[type=artifact:countdown] steed_cooldown 9600");
      player.runCommand("summon minecraft:horse ~ ~ ~ ~ ~ artifact:become_steed");
    });
    return;
  }
});

world.afterEvents.itemReleaseUse.subscribe(event => {
  if (event.itemStack.typeId==="artifact:sniper") {
    const player = event.source;
    system.run(() => {
      player.runCommand("scoreboard players set @s sniper_charge 0");
      player.removeTag("valid_sniper")
    });
  }
});

world.beforeEvents.itemUse.subscribe(event => {
  if (event.itemStack.typeId==="artifact:elven_tablet") {
    let cooldown = world.scoreboard.getObjective("tablet_cooldown").getScores()[0].score;
    if (cooldown && cooldown > 0) {
      let cooldownSeconds = Math.floor(cooldown/20);
      let cooldownMinutes = Math.floor(cooldownSeconds/60);
      let cooldownMsg = cooldownMinutes ? cooldownMinutes + "m " + cooldownSeconds % 60 + "s" : cooldownSeconds + "s";
      event.source.sendMessage("Item on cooldown for another " + cooldownMsg);
      event.cancel = true;
    }
  }
});

world.afterEvents.entityHitEntity.subscribe(event => {
  let hitEntity = event.hitEntity;
  if (hitEntity.hasTag("fire_thorns")) {
    event.damagingEntity.runCommand("summon arrow ~ ~0.1 ~ ~ ~ artifact:become_flame_arrow");
  }
});

system.runInterval(() => {
  let players = world.getPlayers();
  for (let i=0; i<players.length; i++) {
    if (players[i].getComponent("minecraft:health").defaultValue !== 10) {
      players[i].removeTag("is_debuffed");
    }
  }
}, 40);
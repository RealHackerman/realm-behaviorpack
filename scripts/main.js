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
});

world.afterEvents.itemReleaseUse.subscribe(event => {
  if (event.itemStack.typeId==="artifact:sniper") {
    const player = event.source;
    system.run(() => {
      player.runCommand("scoreboard players set @s sniper_charge 0");
    });
  }
});
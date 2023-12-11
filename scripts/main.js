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
  }
});
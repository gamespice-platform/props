extends RefCounted

## GameSpice Props' API level. The rule for bumping it is on [GSAddonApi].
##
## LEVEL rises by one for anything a game could call that did not exist before. OLDEST is
## raised to LEVEL when something a game could have called is removed or changes meaning,
## because every pack built before that no longer compiles against this addon.

# 1: everything before this file existed (an absent file reads as 1).
# 2: hunt/: GSPropDisguise, GSPropDisguiseRules and GSPropTaunts.
# 3: core/: GSPropPieces (collision shaped like the model).
# 4: GSPropDisguise.lean_basis, standing_size, standing_hull, middle_height, model_transform,
#    box_transform: a leant prop rests on the floor.
# 5: toys/: GSPropBodyCatalogue, GSPropBodyBox, GSPropBody, GSPropBodyRules, GSPropBodySounds,
#    GSPropBodyLook (networked physics toys and interactables placed by a map's data).
# 6: GSPropBody.carry, surface_velocity, show_state's delta; GSPropBodyBox.carry_for;
#    GSPropCarry.toys (a roundabout carries the people standing on it); GSPropBodyBox.shot
#    shot_along and blast (a hit scan's damage and an explosion turned into a push), a shot
#    bell rings.
# 7: core/: GSPropModel (a model file as a body's picture, hull and mass) and GSPropFolder
#    (a folder of .glb/.gltf files, with optional JSON sidecars, becomes catalogue props).
# 8: tools/: GSToolView (the first-person model of a held tool or toy, joins dot_view_model).
const LEVEL := 8
const OLDEST := 1

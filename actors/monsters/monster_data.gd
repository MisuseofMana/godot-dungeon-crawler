extends Resource
class_name MonsterData
## contains values that comprise enemies meant for use within a TileMapLayer

## Assets: images and visual assets used for the entity
@export_category('Audio/Visual Assets')
@export var monster_texure : Texture2D
@export_subgroup('Audio') 
@export var hurt_sounds : Array[AudioStream]
@export var attack_sounds : Array[AudioStream]
@export var death_sounds : Array[AudioStream]
@export var happy_sounds : Array[AudioStream]

## Text Details: Text data displayed to the player via UI
@export_category('Text Details')
## then name of the monster entity
@export var monster_name : String = ''

## a short description of the monster entity to be displayed in certain UI elements
@export_multiline var monster_description : String = ''


## Behavior: Numeric data that is used to tune the monsters behavior in the dungeon.
@export_category('Behavior')
## used in calculations of monsters behavior, negative values cause monsters to avoid the player, positive values will make the monster pursue the player.
@export_range(-1.0, 1.0, 0.1) var agression := 0.0

## used to limit the distance a monster checks for the player, higher values equals more vigilant monsters. 
@export_range(1.0, 4.0, 1.0, "or_greater") var vision_distance := 1.0

## how many times a monster will walk the same direction before choosing a new direction to move.
@export_range(1.0, 9.0, 1.0) var max_movement_repeat := 4.0

## how many actions a monster can perform in the span of one "round"
@export_range(1.0, 3.0, 1.0) var actions_per_round := 1.0

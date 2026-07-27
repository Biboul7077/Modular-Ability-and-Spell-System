class_name Skill
extends Resource

@export_group("Metadata")
@export var name: String = "Spell Unamed"
@export var description: String = "Undescibed"
@export var icon: Texture
@export var requirement: Array
@export var is_channeled: bool = false
@export var channel_duration: float = 0.0
@export var channel_tick_interval: float = 0.0

@export_group("Active Zone")
@export var execution: Array

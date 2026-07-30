class_name DamageEffect
extends EffectData

@export var base_damage: int = 0.0
@export var variance: float = 0.0

func get_summary() -> void:
	print("Inflicted %d +/- %f damage")

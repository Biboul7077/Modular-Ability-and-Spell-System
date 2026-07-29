class_name DamageEffect
extends EffectData

@export var base: int
@export var variance: float = 0.0

func execute() -> void:
	var amount = base
	if variance != 0:
		amount += randf_range(1.0 - variance, 1.0 + variance)
	
	#var health_component = HealthComponent
	#if health_component:
		#health_component.take_damage(amount)
	print(get_summary())

func get_summary() -> String:
	return "Deal %d+/-%.f damage" % [base,variance]

class_name TargetResolver
extends Resource

# who should those effects should applied to
enum Source {INSTIGATOR, TARGET, TRIGGERER}
@export var source: Source

func resolve() -> Array:
	return [get_source()]

func get_source() -> Node:
	match source:
		Source.INSTIGATOR: return instigator
		Source.TARGET: return target
		Source.TRIGGERER: return triggerer
	return null

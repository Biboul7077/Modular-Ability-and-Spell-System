class_name InRangeResolver
extends TargetResolver


@export var radius: float = 20.0
@export var max_results: int = -1 # pas de limite
# who should those effects should applied to

func resolve() -> Array:
	var origin = get_source()
	var entities: Array = null # make function that get entities in range
	if max_results <= 0 or entities.size() <= max_results:
		return entities
	return entities.slice(0, max_results)

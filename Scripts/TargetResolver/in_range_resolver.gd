class_name InRangeResolver
extends TargetResolver

@export var radius: float = 20.0
@export var max_results: int = -1

func resolve(context: GameContext) -> Array:
	var origin = get_source(context)
	var entities = WorldManager.get_entities_in_range(origin, radius)
	if max_results <= 0:
		return entities
	return entities.slice(0, max_results)

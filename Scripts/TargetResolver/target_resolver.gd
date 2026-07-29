class_name TargetResolver
extends Resource


enum Source {TARGET, TRIGGERER}
@export var source = null

func check(context: GameContext) -> ResolverResult:
	var node = get_source(context)
	if node == null:
		return ResolverResult.error("ContextResolver: source %s is null" % Source.keys()[source])
	return ResolverResult.new()

func get_source(context: GameContext) -> Node:
	match source:
		Source.TARGET:		return context.target
		Source.TRIGGERER:	return context.triggerer
	return null

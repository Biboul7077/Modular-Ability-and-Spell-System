extends Node
const FIREBALL = preload("uid://cqt2veorap65e")

var current_spell: Skill = null
var current_effect: DamageEffect
var spell_list: Dictionary = {
	&"fireball" : FIREBALL
}


func cast(skill_name: StringName) -> void:
	current_spell = spell_list.get(skill_name)
	print(current_spell.name)
	for i in current_spell:
		if i as EffectMapComponentData:
			current_effect = i[0][0]

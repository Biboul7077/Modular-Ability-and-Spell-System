extends Node

const FIREBALL_SPELL = preload("uid://cpco7stmrdk3a")

var spell_data: Skill
var spell_dict ={
	"fireball": FIREBALL_SPELL
}

func cast(spell: String) -> void:
	spell_data = spell_dict.get(spell)
	if spell_data != null:
		print(spell_data.name)
		spell_data.execution[0].effect.execute()

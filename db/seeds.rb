
@proficiencies = [ 'strength', 'dexterity', 'intelligence', 'wisdom',
  'charisma', 'acrobatics', 'animal handling', 'arcana', 'athletics',
  'deception', 'history', 'insight',  'intimidation', 'investigation',
  'medicine',  'nature', 'perception', 'performance', 'persuasion',
  'religion', 'slight of hand', 'stealth', 'survival']

@proficiencies.each do |prof|
  Proficiency.create!(name: "#{prof}")
end

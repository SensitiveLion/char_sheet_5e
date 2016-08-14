class CharactersController < ApplicationController
  def show
    @character = Character.find(params[:id])
  end

  def new
    @character_fields = ["name", "character_class", "background", "race", "alignment",
                "exp", "hit_dice", "strength", "dexterity", "constitution",
                "intelligence", "wisdom", "charisma", "armor", "initiative",
                "speed", "inspiration", "proficiency", "strength_save",
                "dexterity_save", "constitution_save", "intelligence_save",
                "wisdom_save", "charisma_save", "acrobatics", "animal",
                "arcana", "athletics", "deception", "history", "insight",
                "intimidation", "investication", "medicine", "nature",
                "perception", "religion", "slight", "stealth", "survival",
                "passive_wis", "hit_Points", "cp", "sp", "gp", "pp"]
    @spell_fields = ["level", "name", "type", "casting_time", "range", "components",
        "duration", "description"]

    @spell_casting_fields = ["spell_casting_class", "casting_ability", "spell_dc",
                "spell_atk", "lv1_slots", "lv2_slots", "lv3_slots", "lv4_slots",
                "lv5_slots", "lv6_slots", "lv7_slots", "lv8_slots", "lv9_slots"]

    @attack_fields =  ["name", "attack", "damage"]

    @character = Character.new
    @spells = Spell.new
    @spell_casting = SpellCasting.new
    @attacks = Attack.new
    @text_box = TextBox.new
  end

  def edit
    @character = Character.find(params[:id])

  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user
    if @character.save
      flash[:notice] = "you have added a new Character!"
    else
      render :new
    end
  end

  protected

  def character_params
      params.require(:character).permit(
          :name, :character_class, :background, :race, :alignment,:exp,
          :hit_dice, :strength, :dexterity, :constitution, :intelligence,
          :wisdom, :charisma, :armor, :initiative,:speed, :inspiration,
          :proficiency, :strength_save, :dexterity_save, :constitution_save,
          :intelligence_save, :wisdom_save, :charisma_save, :acrobatics,
          :animal, :arcana, :athletics, :deception, :history, :insight,
          :intimidation, :investication, :medicine, :nature, :perception,
          :religion, :slight, :stealth, :survival, :passive_wis,
          :hit_Points, :cp, :sp, :gp, :pp
          )
  end
end

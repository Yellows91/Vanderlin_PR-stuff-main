/datum/migrant_role/Rockhill/invasion
	name = "Rockhill Invader"
	greet_text = "An incident in the lands of Vanderlin has unfolded! The Lord-Mayor is either dead or captured, make the Vanderlin Monarch regret their decision!"
	allowed_sexes = list(MALE,FEMALE)
	allowed_races = list(
		"Humen",
	)
	show_wanderer_examine = FALSE
	advclass_cat_rolls = list(CTAG_ROCKHILL_INVASION = 20)


/datum/advclass/Rockhill/invasion/Retinue/Commander
	name = "Rockhill Retinue Commander"
	tutorial = "A loyal Retinue Commander that has arrived in Vanderlin. The state of the Lord-Mayor is unknown however the Vanderlins have caused an unforgivable transgression against Rockhill! Lead your retinue into Vanderlin and take it over!"
	allowed_sexes = list(MALE,FEMALE)
	allowed_races = list("Humen")
	outfit = /datum/outfit/job/roguetown/invasion/Rockhill/Retinue/Commander
	category_tags = list(CTAG_ROCKHILL_INVASION)
	maximum_possible_slots = 1

/datum/outfit/job/roguetown/invasion/Rockhill/Retinue/Commander/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/plate
	gloves = /obj/item/clothing/gloves/roguetown/plate
	wrists = /obj/item/clothing/wrists/plate
	head = /obj/item/clothing/head/roguetown/helmet/visored/knight
	armor = /obj/item/clothing/suit/roguetown/armor/plate/full
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltl = /obj/item/rogueweapon/flail
	beltr = /obj/item/roguegear/lantern
	backr = /obj/item/storage/backpack/rogue/satchel
	backl = /obj/item/rougeweapon/sword/long/greatsword
	shirt = /obj/item/clothing/suit/rougetown/armor/chainmail
	pants = /obj/item/clothing/under/roguetown/platelegs
	neck = /obj/item/clothing/neck/roguetown/bevor
	backpack_contents = list()
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 6, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/whipsflails, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind?adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Sir"
		if(H.gender == FEMALE)
			honorary = "Dame"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"
		H.change_stat("strength", 3)
		H.change_stat("endurance", 3)
		H.change_stat("constitution", 2)
		ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
		H.cmode_music = 'sound/music/cmode/nobility/combat_noble.ogg'

/datum/advclass/Rockhill/Invasion/Retinue/Knight
name = "Rockhill Retinue Knight"
tutorial = "You have followed you Retinue-Commander to Vanderlin. Follow his commands and take over Vanderlin! For the Lord-Mayor!"
allowed_sexes = list(MALE,FEMALE)
allowed_races = list("Humen")
Outfit = /datum/outfit/job/roguetown/invasion/Rockhill/Retinue/Knight
category_tags = list(CTAG_ROCKHILL_INVASION)
maximum_possible_slots = 2

	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/plate
	gloves = /obj/item/clothing/gloves/roguetown/plate
	wrists = /obj/item/clothing/wrists/plate
	head = /obj/item/clothing/head/roguetown/helmet/visored/knight
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltl = /obj/item/rogueweapon/sword/arming
	beltr = /obj/item/rogueweapon/mace/steel
	backr = /obj/item/storage/backpack/rogue/satchel
	backl = /obj/item/rogueweapon/shield/tower/metal
	shirt = /obj/item/clothing/suit/rougetown/armor/chainmail
	pants = /obj/item/clothing/under/roguetown/platelegs
	neck = /obj/item/clothing/neck/roguetown/bevor
	backpack_contents = list()
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Sir"
		if(H.gender == FEMALE)
			honorary = "Dame"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"
		H.change_stat("strength", 2)
		H.change_stat("endurance", 2)
		H.change_stat("constitution", 1)
		ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
		H.cmode_music = 'sound/music/cmode/nobility/combat_noble.ogg'
/datum/advclass/Rockhill/Invasion/Man/at/arms
name = "Rockhill Man-at-Arms"
tutorial = "The Retinue Commander has brought you from Rockhill to Vanderlin following an incident. Follow the Commander and take over Vanderlin! For the Lord-Mayor!"
allowed_sexes = list(MALE,FEMALE)
allowed_races = list("Humen")
Outfit = /datum/outfit/job/rougetown/invasion/Rockhill/Men/at/arms
category_tags = list(CTAG_ROCKHILL_INVASION)
maximum_possible_slots = 5

	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/plate
	gloves = /obj/item/clothing/gloves/roguetown/plate
	wrists = /obj/item/clothing/wrists/plate
	head = /obj/item/clothing/head/roguetown/helmet/visored/knight
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltl = /obj/item/rogueweapon/sword/arming
	beltr = /obj/item/rogueweapon/mace/steel
	backr = /obj/item/storage/backpack/rogue/satchel
	backl = /obj/item/rogueweapon/shield/tower/metal
	shirt = /obj/item/clothing/suit/rougetown/armor/chainmail
	pants = /obj/item/clothing/under/roguetown/platelegs
	neck = /obj/item/clothing/neck/roguetown/bevor
	backpack_contents = list()
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.change_stat("strength", 1)
		H.change_stat("endurance", 2)
		ADD_TRAIT(H, MEDIUM_ARMOR, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
		H.cmode_music = 'sound/music/cmode/nobility/combat_noble.ogg'

		/datum/migrant_wave/Rockhill_invasion
	name = "The Rockhill Invasion"
	shared_wave_type = /datum/migrant_wave/Rockhill_invasion
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/Rockhill_invasion_down
	roles = list(
		/datum/migrant_role/Rockhill/invasion = 8
	)
	greet_text = "An incident has unfolded in Vanderlin. The Retinue Commander has brought you all here to attack Vanderlin! Protect the Lord-Mayor if he is still alive in Vanderlin! Glory to Rockhill!"

		/datum/migrant_wave/Rockhill_invasion_down
	name = "The Rockhill Invasion"
	shared_wave_type = /datum/migrant_wave/Rockhill_invasion
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/Rockhill_invasion_down_one
	roles = list(
		/datum/migrant_role/Rockhill/invasion = 7
	)
	greet_text = "An incident has unfolded in Vanderlin. The Retinue Commander has brought you all here to attack Vanderlin! Protect the Lord-Mayor if he is still alive in Vanderlin! Glory to Rockhill!"

		/datum/migrant_wave/Rockhill_invasion_down_one
	name = "The Rockhill Invasion"
	shared_wave_type = /datum/migrant_wave/Rockhill_invasion
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/Rockhill_invasion_down_two
	roles = list(
		/datum/migrant_role/Rockhill/invasion = 6
	)
	greet_text = "An incident has unfolded in Vanderlin. The Retinue Commander has brought you all here to attack Vanderlin! Protect the Lord-Mayor if he is still alive in Vanderlin! Glory to Rockhill!"

		/datum/migrant_wave/Rockhill_invasion_down_two
	name = "The Rockhill Invasion"
	shared_wave_type = /datum/migrant_wave/Rockhill_invasion
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/Rockhill_invasion_down_three
	roles = list(
		/datum/migrant_role/Rockhill/invasion = 5
	)
	greet_text = "An incident has unfolded in Vanderlin. The Retinue Commander has brought you all here to attack Vanderlin! Protect the Lord-Mayor if he is still alive in Vanderlin! Glory to Rockhill!"

		/datum/migrant_wave/Rockhill_invasion_down_three
	name = "The Rockhill Invasion"
	shared_wave_type = /datum/migrant_wave/Rockhill_invasion
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/Rockhill/invasion = 4
	)
	greet_text = "An incident has unfolded in Vanderlin. The Retinue Commander has brought you all here to attack Vanderlin! Protect the Lord-Mayor if he is still alive in Vanderlin! Glory to Rockhill!"

function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- Precast Sets

	-- Precast sets to enhance JAs
	
	sets.precast.JA['Triple Shot'] = {body="Navarch's Frac +2"}
	sets.precast.JA['Snake Eye'] = {legs="Commodore Culottes +1"}
	sets.precast.JA['Wild Card'] = {feet="Commodore Bottes +2"}
	sets.precast.JA['Random Deal'] = {body="Lanun Frac"}
	sets.precast.JA['Fold'] = {body="Commodore Gants +2"}
    
    sets.CapacityMantle = {back="Mecistopins Mantle"}
	
	sets.precast.CorsairRoll = {
        head="Lanun Tricorne",
        hands="Navarch's Gants +2",
        body="Lanun Frac",
        ring1="Barataria Ring",
        back={name="Gunslinger's Cape", augments={'"Mag.Atk.Bns."+2','Enmity-3','"Phantom Roll" ability delay -2'}},
    }
	
	sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Navarch's Culottes +1"})
	sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Navarch's Bottes +2"})
	sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Navarch's Tricorne +1"})
	sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Navarch's Frac +2"})
	sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Navarch's Gants +2"})
	
	sets.precast.LuzafRing = {ring2="Luzaf's Ring"}
    --sets.precast.FoldDoubleBust = {hands="Lanun Gants"}
	
	sets.precast.CorsairShot = {}
	

	-- Waltz set (chr and vit)
	sets.precast.Waltz = {
		head="Whirlpool Mask",
		body="Iuitl Vest",
        hands="Iuitl Wristbands +1",
		legs="Nahtirah Trousers",
        feet="Iuitl Gaiters +1"
    }
		
	-- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}

	-- Fast cast sets for spells
	
	sets.precast.FC = {
        ammo="Impatiens",
        ear1="Loquacious Earring",
        ring1="Prolix Ring",
        body="Dread Jupon",
        hands="Buremte Gloves",
        legs="Kaabnax Trousers"
    }

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})

	sets.precast.RA = {
        ammo=gear.RAbullet,
		hands="Iuitl Wristbands +1",
		back="Navarch's Mantle",
        waist="Impulse Belt",
        legs="Nahtirah Trousers",
        feet="Wurrukatte Boots"
    }
       
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {
		head="Umbani Cap",
        neck=gear.ElementalGorget,
        ear1="Flame Pearl",
        ear2="Flame Pearl",
		body="Lanun Frac",
        hands="Iuitl Wristbands +1",
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
		back="Buquwik Cape",
        waist=gear.ElementalBelt,
        legs="Nahtirah Trousers",
        feet="Scopuli Nails +1"
    }


	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, { ear2="Moonshade Earring"})

	sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {legs="Nahtirah Trousers"})

	sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {ear2="Moonshade Earring", legs="Nahtirah Trousers"})

	sets.precast.WS['Last Stand'] = set_combine(sets.precast.WS, {
        ammo=gear.WSbullet,
    	body="Mekosuchinae Harness",
        ear1="Flame Pearl",
        ear2="Moonshade Earring",
    })
	sets.precast.WS['Last Stand'].Acc = set_combine(sets.precast.WS['Last Stand'], {
        ammo=gear.WSbullet,
        ear1="Volley Earring",
        ear2="Moonshade Earring",
        back="Libeccio Mantle",
        ring1="Hajduk Ring",
        ring2="Longshot Ring"
    })

	sets.precast.WS['Wildfire'] = {
        ammo=gear.MAbullet,
        head="Umbani Cap",
        neck="Stoicheion Medal",
        ear1="Crematio Earring",
        ear2="Friomisi Earring",
        body="Lanun Frac",
        hands="Iuitl Wristbands +1",
        ring1="Acumen Ring",
        ring2="Garuda Ring",
        back={name="Gunslinger's Cape", augments={'"Mag.Atk.Bns."+5','Enmity-4'}},
        waist="Aquiline Belt",
        legs="Shneddick Tights +1",
        feet="Navarch's Bottes +2"
    }

	sets.precast.WS['Leaden Salute'] = set_combine(sets.precast.WS['Wildfire'], { ear2="Moonshade Earring"})
	
	-- Midcast Sets
	sets.midcast.FastRecast = {
		head="Uk'uxkaj Cap",
        hands="Iuitl Wristbands +1",
		legs="Kaabnax Trousers",
        feet="Iuitl Gaiters +1"
    }
		
	-- Specific spells
	sets.midcast.Utsusemi = sets.midcast.FastRecast

	sets.midcast.CorsairShot = {
        ammo=gear.QDbullet,
        head="Umbani Cap",
        neck="Stoicheion Medal",
        ear1="Friomisi Earring",
        ear2="Crematio Earring",
        body="Lanun Frac",
        hands="Iuitl Wristbands +1",
        ring1="Acumen Ring",
        ring2="Stormsoul Ring",
        back={name="Gunslinger's Cape", augments={'"Mag.Atk.Bns."+5','Enmity-4'}},
        waist="Aquiline Belt",
        legs="Shneddick Tights +1",
        feet="Navarch's Bottes +2"
    }

	sets.midcast.CorsairShot.Acc = set_combine(sets.midcast.CorsairShot, {
        body="Mekosuchinae Harness",
        ear1="Lifestorm Earring",
        ear2="Psystorm Earring",
        ring1="Perception Ring",
        ring2="Sangoma Ring"
    })

    sets.midcast.CorsairShot['Light Shot'] = sets.midcast.CorsairShot.Acc
	sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot['Light Shot']

	-- Ranged gear
	sets.midcast.RA = {
        ammo=gear.RAbullet,
        head="Umbani Cap",
        neck="Iqabi Necklace",
        ear1="Clearview Earring",
        ear2="Volley Earring",
        body="Lanun Frac",
        hands="Sigyn's Bazubands",
        ring1="Rajas Ring",
        ring2="Hajduk Ring",
        back={name="Gunslinger's Cape", augments={'"Mag.Atk.Bns."+5','Enmity-4'}},
        waist="Elanid Belt",
        legs="Aetosaur Trousers +1",
        feet="Scopuli Nails +1"
    }

	sets.midcast.RA.Acc = set_combine(sets.midcast.RA, {
    	body="Mekosuchinae Harness",
        ring1="Paqichikaji Ring"
    })
	
	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {ring2="Paguroidea Ring"}

	-- Idle sets
	sets.idle = {
        ammo=gear.RAbullet,
        head="Umbani Cap",
        neck="Twilight Torque",
        ear2="Dawn Earring",
        body="Mekosuchinae Harness",
        hands="Iuitl Wristbands +1",
        ring1="Dark Ring",
        ring2="Paguroidea Ring",
        back="Repulse Mantle",
        waist="Commodore Belt",
        legs="Nahtirah Trousers",
        feet="Skadi's Jambeaux +1"
    }
    sets.idle.Regen = set_combine(sets.idle, {
        head="Ocelomeh Headpiece +1",
        body="Kheper jacket"
    })

	sets.idle.Town = {
        range="Vanir Gun",
        ammo=gear.RAbullet,
        head="Lithelimb Cap",
        neck="Iqabi Necklace",
        ear1="Friomisi Earring",
        ear2="Crematio Earring",
        body="Mekosuchinae Harness",
        hands="Sigyn's Bazubands",
        ring1="Patricius Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Commodore Belt",
        legs="Crimson Cuisses",
        feet="Iuitl Gaiters +1"
    }
	
	-- Defense sets
	sets.defense.PDT = set_combine(sets.idle, {
        head="Lithelimb Cap",
        neck="Twilight Torque",
        hands="Iuitl Wristbands +1",
        body="Lanun Frac",
        ring1="Patricius Ring",
        ring2="Dark Ring",
        legs="Iuitl Tights +1",
        feet="Iuitl Gaiters +1"
    })

	sets.defense.MDT = sets.defense.PDT

	sets.Kiting = {legs="Crimson Cuisses"}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
    sets.engaged = {
        ammo=gear.RAbullet,
        head="Umbani Cap",
        neck="Iqabi Necklace",
        ear1="Clearview Earring",
        ear2="Volley Earring",
        body="Lanun Frac",
        hands="Sigyn's Bazubands",
        ring1="Rajas Ring",
        ring2="Longshot Ring",
        back={name="Gunslinger's Cape", augments={'"Mag.Atk.Bns."+5','Enmity-4'}},
        waist="Elanid Belt",
        legs="Nahtirah Trousers",
        feet="Iuitl Gaiters +1"
    }
    sets.engaged.DW = sets.engaged
	
	-- Normal melee group
	sets.engaged.Melee = {
        ammo=gear.RAbullet,
        head="Whirlpool Mask",
        neck="Iqabi Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Qaaxo Harness",
        hands="Iuitl Wristbands +1",
        ring1="Patricius Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs="Manibozho Brais",
        feet="Qaaxo Leggings"
    }

	sets.engaged.Melee.DW = set_combine(sets.engaged.Melee, {
        --head="Thurandaut Chapeau +1",
        ear1="Dudgeon Earring",
        ear2="Heartseeker Earring",
        body="Skadi's Cuirie +1",
        --waist="Nusku's Sash",
        back="Vellaunus' Mantle +1"
    })
	
	sets.engaged.Acc = set_combine(sets.engaged.Melee, {
    	body="Mekosuchinae Harness",
        ring2="Ramuh Ring +1",
        waist="Olseni Belt"
    })
	sets.engaged.Acc.DW = set_combine(sets.engaged.Melee.DW, {
        neck="Iqabi Necklace",
        ring2="Mars's Ring"
    })


end


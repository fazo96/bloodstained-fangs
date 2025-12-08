#import "../../utils.typ": info-box, keep_together, rpg_table

#pagebreak()
#keep_together[
  == Rules

  _Bloodstained Fangs_ is a minimalist Solo Role Playing Game designed to be played with only one character (the Protagonist). You'll guide them through the story that will unravel during the game, asking closed questions to an Oracle which will help you overturn your expectations.

  Every now and then you will be surprised with an unexpected twist!

  === Keep The Action In Motion

  A game in _Bloodstained Fangs_ is a succession of scenes.
  A scene is a unit of time in which a certain action takes place in pursuit of a certain short-term goal.

  In _Bloodstained Fangs_ at each scene:
  + *Identify what you expect from the scene*. Compared to traits, goal, and motivation determine the Protagonist's action. What might be the reaction of the game world?
  + *Test your expectations*. When you are uncertain (or overconfident) about the reaction to your actions, ask the Oracle a closed question (answer is Yes or No), considering the tags involved to determine if there is an Advantage or Disadvantage.
  + *Interpret the result*. Is the Oracle's answer in line with your expectations? If not, in the context in which the scene takes place, how should an answer that subverts them be considered?

  This sequence will come to you naturally after some practice. Use it as a guideline the first few times.
]

#keep_together[
  === Consulting the Oracle

  When you need to test your expectations you'll ask the Oracle a closed question.

  You’ll need 2d6 in one color (*Chance Dice*), and 2d6 in another (*Risk Dice*).

  To resolve a closed question, roll one *Chance Die* and one *Risk Die*:
  - If the Chance Die is highest, the answer is *Yes*.
  - If the Risk Die is highest, the answer is *No*.
  - If both are low (3 or less), add a *but...*.
  - If both are high (4 or more), add an *and...*.
  - If both are equal, the answer is *Yes, but...*. Add a point to the *Twist Counter*.


  #rpg_table(
    columns: (auto, 1fr, 1fr),
    [Dice Value],
    [Chance Die > Risk Die],
    [Risk Die > Chance Die],
    [Both ≤ 3],
    [Yes, but...],
    [No, but...],
    [Both ≥ 4],
    [Yes, and...],
    [No, and...],
    [Mismatched],
    [Yes],
    [No],
    [Equal],
    [Yes, but... Add 1 to the Twist Counter],
    [],
  )
]

#keep_together[
  === Advantage and Disadvantage

  If circumstances or positive tags grant an advantage, add a *Chance Die* to the roll. Otherwise, when hindrances or negative tag cause a disadvantage, add a *Risk Die*. In both cases keep only the higher die of the added type when you check the roll.

  Consider tags *intuitively and not quantitatively*, using the context of the situation at play. It is important to keep the flow of play fast and not accounting for advantages and disadvantages numerically!
]

#keep_together[
  === Twist Counter

  The Twist Counter is a measure of the rising tension in the narrative. At the beginning is set to 0. Every time a double throw (dice are equal) happens, add 1 to the Counter. If the Counter is below three, consider the answer as "*Yes, but...*". Otherwise a *Twist* happens and resets the Counter.

  Roll 2d6 and consult the following Twist Table to determine what kind of twist happens.

  #rpg_table(
    columns: (auto, 1fr, 1fr),
    [D6],
    [Subject],
    [Action],
    [1],
    [A third party],
    [Appears],
    [2],
    [The hero],
    [Alters the location],
    [3],
    [An encounter],
    [Helps the hero],
    [4],
    [A physical event],
    [Hinders the hero],
    [5],
    [An emotional event],
    [Changes the goal],
    [6],
    [An object],
    [Ends the scene],
  )

  Interpret the two-word sentence in the context of the current scene. Twists will keep the plot and events going in unexpected ways.
]

#keep_together[
  === Humanity

  Every supernatural being exists in constant war between their human soul and the beast clawing its way out. For Vampires, the beast is *the hunger*—an insatiable craving for blood. For Lycanthropes, it erupts with the full moon, tearing through flesh and reason alike. For Wizards, magic flows through them like poison, warping mind and soul with every spell.

  *When creating a character, set their Humanity to 6*.

  If appropriate for your character, feel free to begin your story with a different Humanity value in line with your character's background and history.

  *Either way, the maximum Humanity is 9*. Even regular human characters should track humanity—you never know when a dark turn will come.

  #info-box[
    Levi is a renowned assassin for hire. One day, hunting a target in an abandoned warehouse, he gets shot in the chest and faints—then wakes up healed minutes later. Magical powers long asleep in his body awaken to save his life, but that's not what he tells himself. He believes it an act of God, and decides to turn his life around. Levi begins his story with a Humanity of 3, to reflect his past as an assassin, and the Magical Regeneration tag due to his new powers.
  ]
]

#keep_together[
  ==== Being a Vampire

  Vampires must drain the life force of mortals to survive (both Soul and Blood Vampires).

  *For every night that passes without feeding, lose 1 Humanity*. The hunger gnaws at you, eroding what's left of your soul.

  When you feed successfully, *gain 3 Humanity* (maximum 9). However, if you hurt your prey while feeding—or were interrupted mid-feast—*you gain only 1 Humanity*. The guilt lingers.
]

#keep_together[
  ==== Being a Werewolf

  Werewolves fight a losing battle against their beastly nature, shackled to the cycle of the Moon. At night, *when experiencing a tense situation or overwhelming emotion, you feel the Moon's call*. If there is a Full Moon, the transformation is inevitable—you *must* change and *lose 1 Humanity*. Otherwise, roll a d6 to see if you can hold on:

  - If you roll a 1 or below your Humanity, you remain human. The Moon's call fades, at least for now.
  - If you roll a 6 or equal to/above your Humanity, the Moon's power surges through you. You can either transform into the beast or resist the call. If you resist, *gain 1 Humanity* and stay human—envision the struggle, the memories and emotions that anchor you to your humanity. If you give in, *lose 1 Humanity* as fur and fangs take over.

  You can also transform into a Wolf if the fiction demands it, such as during a ritual. When you do, *lose 1 Humanity*.
]

#keep_together[
  #info-box[
    When rolling a d6 to see if you can hold on, if you roll a 1 then you always remain human. If you roll a 6 then you can always choose to transform into the beast.
  ]

  *When transformed into a Wolf*, roll with advantage on all violent actions where you act aggressively. The beast is in control. However, roll with disadvantage when trying to avoid danger, violence, or calm down. You cannot tap into your supernatural powers in this state—you're already using them at full capacity.

  *When dawn breaks*, you transform back into human form. You can also revert if the fiction demands it or if someone manages to calm the beast within you.

  In human form, you can *leverage the supernatural* to roll the Oracle with advantage, drawing on your regenerative powers and enhanced strength and speed.
]

#keep_together[
  ==== Leverage the Supernatural

  You can *tap into your supernatural powers*—a skill, gear, magical powers or the darkness within—to roll the Oracle with advantage, assuming you have something that grants an advantage in this specific situation.

  Supernatural abilities often come with a price—each time you tap into your powers, you could lose Humanity.

  *You don't always pay this price. Ask yourself:*

  + Am I pushing beyond my limits, unleashing my full power?
  + Am I acting from desperation, crossing lines I'd normally avoid?
  + Is this a cursed, dark power fueled by my own soul?
  + Does this make me less human, more monster?

  *If yes to any*—you pay the toll. *If not*—you're just using the skills and gear you have and you don't pay the price.

  *When leveraging the supernatural and paying the price:*

  + *Envision* how the power gives you an advantage.
  + *Reduce your Humanity* by one as something inside you withers.
  + *Roll a d6*. If it's a 6 or higher than your Humanity, roll on the Mystic Backlash table—the power bites back. If it's a 1 or it's equal or lower than your Humanity, you maintain control—for now. Roll with advantage, riding the razor's edge between human and monster.

  #info-box[
    When rolling a 1, you keep control regardless of your Humanity. Similarly, when rolling a 6, you always lose control.
  ]

]

#keep_together[
  ==== Mystic Backlash

  #rpg_table(
    columns: 5,
    [],
    [Mortal],
    [Vampire],
    [Lycantrope],
    [Magic User],
    [1],
    [Your object or technique fails],
    [Thirst overwhelms you, and you lose control],
    [Your teeth turn into wolf fangs temporarily],
    [It backfires],

    [2],
    [The object or technique is not what you expected],
    [You get an unnatural, hideous bloodshot eye],
    [You can't help but howl very loudly],
    [It misses the target, damaging something],

    [3],
    [Your body is tainted or hurt],
    [Your skin turns blueish due to strain],
    [Your expanding chest rips your clothes],
    [You suffer overwhelming pain due to strain],
  )

  #rpg_table(
    columns: 5,
    [],
    [Mortal],
    [Vampire],
    [Lycantrope],
    [Magic User],

    [4],
    [Your mind is temporarily warped],
    [You are plagued by visions of doom and overwhelming pain],
    [You experience sensory overload and instinctively flee the scene],
    [You faint due to strain],

    [5],
    [The effect is much weaker than you wanted],
    [Thirst overwhelms you, and you are forced to run away],
    [Your mind temporarily behaves like a wolf],
    [The effect is much weaker than you wanted],

    [6],
    [The effect is much stronger than you wanted],
    [The effect is much stronger than you wanted],
    [The effect is much stronger than you wanted],
    [The effect is much stronger than you wanted],
  )
]

#pagebreak()
#keep_together[
  ==== Losing all your humanity

  When your Humanity reaches zero, the beast wins. Envision how it takes over completely—destroying or grievously harming something or someone you love. The horror of what you've done snaps you back to reality. Set your Humanity to 2 as you reel from the devastation you've caused.
]

#keep_together[
  ==== Recovering humanity

  When you perform a significant act that contradicts or undermines your supernatural nature—defying your instincts, rejecting power, sacrificing status—you may recover 1 Humanity.

  You may also recover Humanity through extraordinary means within the fiction, or by spending a long time abstaining from supernatural activities. Redemption is possible, but never easy.

  Some people cling to *Faith*. They confess their sins in churches, pray for forgiveness, and recover 1 Humanity. The Lord loves and forgives all His children—even monsters—as long as they have even an ounce of Humanity left. If you choose this path, envision how your character's Faith becomes a lifeline against the darkness consuming them.
]

#keep_together[
  === Conflicts

  A _Conflict_ is any situation in which opponents clash, attacking, defending, or wearing each other down in order to win.
  This applies both in a practical and metaphorical sense.

  So, a Conflict is not only limited to combat (or fighting) in the strict sense but also to competitive situations (such as contests, duels, verbal confrontations, etc.) in which two or more characters (including vehicles, of course!) compete.

  Conflicts can be resolved in different ways depending on preferences and context:
  + Ask a single closed question. The Oracle's answer determines the outcome of the conflict.
  + Ask a series of closed questions to resolve current single actions.
  + Use the rules of Harm & Luck below.
]

#keep_together[
  Note that the Twist Counter *does not apply* to Harm & Luck. Instead, it is used regularly if the Conflict is handled with closed questions.

  If the conflict is resolved by applying damage to the Luck trait, roll the dice to determine whether the protagonist causes damage to the opponent or suffers damage due to counterattack or failed defense. The rolls are player facing only.

  The damage reduces the Luck of the target, whether protagonist or NPC. When the Luck runs out, the character has lost the conflict.

  The final outcome depends on the context. Do you get caught? Are you seriously injured? You may even die if that fits the narrative.
]

#keep_together[
  #rpg_table(
    columns: 3,
    [Answer],
    [Do you get what you want?],
    [Harm],
    [Yes, and...],
    [You get what you want, and something else.],
    [Cause 3],
    [Yes...],
    [You get what you want.],
    [Cause 2],
    [Yes, but...],
    [You get what you want, but at a cost.],
    [Cause 1],
    [No, but...],
    [You don’t get what you want, but it’s not a total loss.],
    [Take 1],
    [No...],
    [You don’t get what you were after.],
    [Take 2],
    [No, and...],
    [You don’t get what you want, and things get worse.],
    [Take 3],
  )
]

#keep_together[
  === Determine the mood of the next scene

  At the end of the current scene sometimes you will be clear about the direction to take, other times you may need to determine the general mood of the next one. In this case roll 1d6 and consult the following table:

  #rpg_table(
    columns: (auto, 1fr),
    [D6],
    [Next Scene],
    [1-3],
    [Dramatic scene],
    [4-5],
    [Quiet Scene],
    [6],
    [Meanwhile…],
  )
]

#keep_together[
  - A *dramatic scene* does not break the tension of the previous scene but carries it further forward, introducing further obstacles or difficulties.
  - During a *quiet scene* there is time to take a breath, to heal, to make plans for the next steps and to deepen relationships.
  - A *meanwhile scene* takes place somewhere else, other than where the hero is. It cuts to villains or other plot-important characters.
]

#pagebreak()
#keep_together[
  === Open-Ended Question or Get Inspired

  To answer an Open-Ended question, roll 1d6 once on each of the Inspiration Tables (roll at least a verb and a noun, adjectives are optional).

  === When the story ends

  At the end of the adventure you may add another trait to the character. It is better that this is related to how the story just ended and can be either a Skill, Gear, a new Frailty, or even a new Nemesis! You can also modify an existing trait to better represent an enhanced expertise.

  Also update the list of *NPCs*, *Locations*, and *Events* that may show up again in future adventures.
]

#keep_together[
  === Playing as a Group

  While _Bloodstained Fangs_ is designed primarily for *solo play*, its mechanics can be adapted for *group sessions*. Since the game is derived from *Freeform Universal*, there's nothing stopping you from playing it with others—if you really want to. Just be prepared to adapt things as needed.

  There are two main ways to play in a group:

  ==== Without a Game Master (GM-less Mode)

  - Each player controls their own *Protagonist* and asks questions to the *Oracle*, just like in solo play.
  - The *Oracle's answers and world reactions* are interpreted by the player who asked the question.
  - A *Facilitator* (either a rotating or fixed role) helps *moderate*, *remind players of rules*, and *settle disputes* if needed.
  - Questions affecting the *whole group* should be discussed collectively.
]

#keep_together[
  ==== With a Game Master

  - The *GM does not roll dice*—only the players consult the Oracle.
  - The GM interprets Oracle responses and presents the *world's reactions*.
  - The GM also acts as a *facilitator*, guiding the flow of the story and helping resolve questions.
]

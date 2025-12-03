#import "../template.typ": rpg_table

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
  columns: 3,
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

=== Advantage and Disadvantage

If circumstances or positive tags grant an advantage, add a *Chance Die* to the roll. Otherwise, when hindrances or negative tag cause a disadvantage, add a *Risk Die*. In both cases keep only the higher die of the added type when you check the roll.

Consider tags *intuitively and not quantitatively*, using the context of the situation at play. It is important to keep the flow of play fast and not accounting for advantages and disadvantages numerically!

=== Twist Counter

The Twist Counter is a measure of the rising tension in the narrative. At the beginning is set to 0. Every time a double throw (dice are equal) happens, add 1 to the Counter. If the Counter is below three, consider the answer as "*Yes, but...*". Otherwise a *Twist* happens and resets the Counter.

Roll 2d6 and consult the following Twist Table to determine what kind of twist happens.

#rpg_table(
  columns: 3,
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

=== Humanity

Every supernatural being lives in permanent conflict between their human nature and the beast within them. For Vampires, the beast is the hunger for blood. For Lycantropes, it comes out during the full moon. For Wizards, it warps their mind and soul through the excessive flow of magic in them.

If you are a mortal with no supernatural powers, then you do not have to track your Humanity.

*Your Humanity stat starts at 6*, and gets reduced by one every time you do something in the fiction that goes against human nature or harms humans. *The maximum Humanity is 9*.

You can also *tap into your supernatural powers*, object or technique to re-roll your Chance dice and keep the highest number, assuming you have something that can give you an advantage in this specific situation.

#pagebreak()
==== Being a Vampire

Vampires have to suck the life force of mortals to survive. *For every night that passes without feeding, lose 1 humanity*. If you fed before sunrise comes and you retire for slumber, *gain 3 humanity instead* (without going over the maximum of 9). However if by feeding you hurt your prey, or you were interrupted, then *you gain only 1 humanity*.

*You can leverage the supernatural* to roll with advantage and leverage your extreme strength, speed, and reflexes but abusing these powers will have consequences.

==== Being a Werewolf

Werewolves struggle to control their beastly nature, which is tied to the cycle of the Moon. At night, *when experiencing a tense situation or strong emotion, you feel the call of the Moon*. If there is a Full Moon, you must transform and *lose 1 humanity*. Otherwise, roll a d6 to check what happens:

- if you roll a 1 or a number below your humanity (except 6), you stay human and the call of the Moon does not reach you
- If you roll a 6 or a number above or equal to your humanity (except 1), you feel the power of the Moon: you can transform into the beast, or resist the Moon's call. If you resist, *gain 1 humanity* and stay human: envision how you struggle and what memories and feelings help you endure the call. If you give in, *lose 1 humanity*

You can also transform into a Wolf if the fiction demands it. In which case, remember to *lose 1 humanity*.

*When you are transformed into a Wolf*, roll with advantage on all violent situations where you act aggressively. However, roll with disadvantage whenever you want to avoid danger or violence or calm down. You cannot tap into your supernatural powers in this state, because you are already leveraging them to the fullest.

*When the night is over and dawn comes*, you transform back into a human. You can also transform back into a human if the fiction demands it or if someone succeeds in creating the conditions for you to calm down.

*You can leverage the supernatural* when in human form to roll with advantage and leverage your regeneration powers and above average strength and speed while in your human form.

==== Leverage the supernatural

+ First explain the fiction what supernatural power, object, or technique you are using and how this is giving you an advantage in this situation.
+ Now reduce your Humanity by one as you summon the supernatural powers within you
+ Then, roll a d6. If the result is higher than your humanity, roll on the mystic backlash table below to see what happens depending on your character. If the result is lower or equal to your humanity, you can reroll your Chance dice one time and keep the highest number.

#pagebreak()
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
  [Thirst overwhelms you, and you lose control trying to feed],
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
  [The clothes on your torso rip off as your chest puffs up due to strain],
  [You suffer overwhelming pain due to strain],

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

==== Losing all your humanity

When your humanity goes to zero, envision how your inner beast takes over, destroying or severely damaging something or someone you care about as appropriate for the current situation. Then, set your humanity to 2 as you envision how you reel back from the experience.

==== Recovering humanity

When doing a significant act that contradicts or undermines your supernatural nature, tendencies, relationship, social status or power, you may recover 1 humanity.

You may also recover your humanity as appropriate for the current situation by extraordinary means within the fiction, or by spending a long time without engaging in supernatural activities.

Some people have *Faith*, allowing them to confess their sins or pray in a church to recover 1 Humanity. The Lord loves and forgives all of his children with even an ounce of Humanity left in them. If you leverage this option, envision how your character's Faith allows them to overcome the horrors within them.

#pagebreak()
=== Conflicts

A _Conflict_ is any situation in which opponents clash, attacking, defending, or wearing each other down in order to win.
This applies both in a practical and metaphorical sense.

So, a Conflict is not only limited to combat (or fighting) in the strict sense but also to competitive situations (such as contests, duels, verbal confrontations, etc.) in which two or more characters (including vehicles, of course!) compete.

Conflicts can be resolved in different ways depending on preferences and context:
+ Ask a single closed question. The Oracle's answer determines the outcome of the conflict.
+ Ask a series of closed questions to resolve current single actions.
+ Use the rules of Harm & Luck below.

Note that the Twist Counter *does not apply* to Harm & Luck. Instead, it is used regularly if the Conflict is handled with closed questions.

If the conflict is resolved by applying damage to the Luck trait, roll the dice to determine whether the protagonist causes damage to the opponent or suffers damage due to counterattack or failed defense. The rolls are player facing only.

The damage reduces the Luck of the target, whether protagonist or NPC. When the Luck runs out, the character has lost the conflict.

The final outcome depends on the context. Do you get caught? Are you seriously injured? You may even die if that fits the narrative.

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

=== Determine the mood of the next scene

At the end of the current scene sometimes you will be clear about the direction to take, other times you may need to determine the general mood of the next one. In this case roll 1d6 and consult the following table:

#rpg_table(
  columns: 2,
  [D6],
  [Next Scene],
  [1-3],
  [Dramatic scene],
  [4-5],
  [Quiet Scene],
  [6],
  [Meanwhile…],
)

- A *dramatic scene* does not break the tension of the previous scene but carries it further forward, introducing further obstacles or difficulties.
- During a *quiet scene* there is time to take a breath, to heal, to make plans for the next steps and to deepen relationships.
- A *meanwhile scene* takes place somewhere else, other than where the hero is. It cuts to villains or other plot-important characters.

=== Open-Ended Question or Get Inspired

To answer an Open-Ended question, roll 1d6 once on each of the Inspiration Tables (roll at least a verb and a noun, adjectives are optional).

=== When the story ends

At the end of the adventure you may add another trait to the character. It is better that this is related to how the story just ended and can be either a Skill, Gear, a new Frailty, or even a new Nemesis! You can also modify an existing trait to better represent an enhanced expertise.

Also update the list of *NPCs*, *Locations*, and *Events* that may show up again in future adventures.

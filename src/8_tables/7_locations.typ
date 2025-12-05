#import "../../template.typ": keep_together, matrix_d6, rpg_table, table_d66, table_d66_double

#pagebreak()
#keep_together[
  === Locations

  Every corner of the City hides something—a deal going down, a body cooling, or worse.

  #rpg_table(
    columns: (auto, 1fr, auto, 1fr),
    [D6],
    [District],
    [D6],
    [District],
    [1],
    [The Docks],
    [2],
    [The Beach],
    [3],
    [Downtown],
    [4],
    [Slum],
    [5],
    [Misty Park Forest],
    [6],
    [Riverside],
  )

  #keep_together[
    #rpg_table(
      columns: (auto, 1fr, 1fr, 1fr),
      [],
      [The Docks],
      [The Beach],
      [Downtown],
      [1],
      [Warehouse],
      [Beach Club],
      [Skyscraper Office],
      [2],
      [Shipping Yard],
      [Bonfire Gathering],
      [Luxury Hotel],
      [3],
      [Luxury Yacht],
      [Beachside Bar],
      [Fancy Restaurant],
      [4],
      [Cargo Ship],
      [Surf Shop],
      [Corporate HQ],
      [5],
      [Abandoned Pier],
      [Seaside Motel],
      [Security Firm],
      [6],
      [Smuggler's Den],
      [Lighthouse],
      [Penthouse ],
    )

    #rpg_table(
      columns: (auto, 1fr, 1fr, 1fr),
      [],
      [Slum],
      [Riverside],
      [Misty Park Forest],
      [1],
      [*Shatter*],
      [Train Station],
      [*The Big House*],
      [2],
      [Wrecked Building],
      [Promenade],
      [Ranger Station],
      [3],
      [Drug Den],
      [Bridge Underpass],
      [Hiking Trail],
      [4],
      [Pawn Shop],
      [Cargo Terminal],
      [Hidden Grove],
      [5],
      [Sketchy Casino],
      [Romantic Cafe],
      [Abandoned Cabin],
      [6],
      [Back Alley Bar],
      [Ferry Dock],
      [Stone Circle],
    )
  ]
]


#pagebreak()
==== Other Places

Not every scene happens in the obvious spots—sometimes you need somewhere off the beaten path.

#table_d66_double(
  (
    [Abandoned Building],
    [Back Alley],
    [Dive Bar],
    [Parking Garage],
    [Rooftop],
    [Basement],
    [Condemned Apartment],
    [Pawn Shop],
    [All-Night Diner],
    [Strip Club],
    [Tattoo Parlor],
    [Laundromat],
    [Convenience Store],
    [Gas Station],
    [Motel Room],
    [Subway Platform],
    [Cemetery],
    [Funeral Home],
    [Occult Bookshop],
    [Psychic Parlor],
    [Antique Shop],
    [Shooting Range],
    [Boxing Gym],
    [Abandoned Factory],
    [Storage Unit],
    [Parking Lot],
    [Bridge Underpass],
    [Sewer Access],
    [Theater],
    [Shuttered Casino],
    [Homeless Encampment],
    [Drug Den],
    [Chop Shop],
    [Illegal Fight Club],
    [Black Market],
    [Illegal Clinic],
  ),
  [Place],
)

#pagebreak()
==== Place Quirk

Every location has its own atmosphere—something that sets the mood before the blood starts flowing.


#table_d66_double(
  (
    [Gloomy],
    [Bustling],
    [Shadowy],
    [Serene],
    [Dilapidated],
    [Vibrant],
    [Haunting],
    [Cozy],
    [Foreboding],
    [Tranquil],
    [Desolate],
    [Lively],
    [Ancient],
    [Bright],
    [Crumbling],
    [Peaceful],
    [Eerie],
    [Modern],
    [Claustrophobic],
    [Spacious],
    [Inviting],
    [Dark],
    [Colorful],
    [Damp],
    [Clean],
    [Sinister],
    [Ordinary],
    [Rotting],
    [Sleek],
    [Isolated],
    [Welcoming],
    [Blighted],
    [Busy],
    [Stark],
    [Safe],
    [Familiar],
  ),
  [Quirk],
)

#pagebreak()
==== Secret Location Inside

Behind locked doors and hidden passages, the City's true horrors wait in the dark.


#table_d66(
  (
    [Vault],
    [Vault],
    [Hideout],
    [Hideout],
    [Library],
    [Library],
    [Art Room],
    [Art Room],
    [Relic Room],
    [Relic Room],
    [Shrine],
    [Shrine],
    [Conference Room],
    [Conference Room],
    [Passage to elsewhere],
    [Passage to elsewhere],
    [Tomb],
    [Tomb],
    [Ritual Chamber],
    [Ritual Chamber],
    [Torture Chamber],
    [Torture Chamber],
    [Lab],
    [Lab],
    [Observatory],
    [Observatory],
    [Crypt],
    [Crypt],
    [Temple],
    [Temple],
    [Prison],
    [Prison],
    [Secret Armory],
    [Hidden Sanctuary],
    [Forbidden Archive],
    [Blood Chamber],
  ),
  [Secret Room],
)

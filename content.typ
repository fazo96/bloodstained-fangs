#import "@preview/markly:0.3.0"
#import "template.typ": bloodstained-template, page_illutration

// This variable is the source of truth for the current version
// of the book contents
#let version = "Beta 6"

#let bloodstained-fangs(language, markly-context, subtitle, description, contents) = {
  let src = "src/" + language + "/"
  show: markly.page-setup.with(markly-context)

  show: bloodstained-template(
    version,
    markly-context,
    subtitle,
    description,
    contents,
    [
      // Include all chapters in order
      #include src + "1_intro.typ"

      #page_illutration("art/vampire_computers.webp", markly-context)
      #page_illutration("art/detective.webp", markly-context)

      #include src + "2_setting_intro.typ"

      #page_illutration("art/soul_vampire.webp", markly-context)

      #include src + "3_characters.typ"

      #page_illutration("art/witch_patch.webp", markly-context)
      #page_illutration("art/merc_alley.webp", markly-context)

      #include src + "4_rules.typ"

      #page_illutration("art/man_roof.webp", markly-context)

      #include src + "5_setting.typ"

      #if language == "eng" {
        page_illutration("art/wizard_run.webp", markly-context)
      }
      #page_illutration("art/mob_money.webp", markly-context)

      #include src + "6_factions.typ"

      #page_illutration("art/ghost_hunter.webp", markly-context)
      #page_illutration("art/knight_priest.webp", markly-context)

      #include src + "7_creatures.typ"

      #if language == "ita" {
        page_illutration("art/wizard_run.webp", markly-context)
      }
      #page_illutration("art/police_car.webp", markly-context)

      #include src + "8_tables/1_adventure_seeds.typ"
      #include src + "8_tables/2_inspiration.typ"
      #include src + "8_tables/3_character.typ"
      #include src + "8_tables/4_ambience.typ"
      #include src + "8_tables/5_rumors.typ"
      #include src + "8_tables/6_story.typ"
      #include src + "8_tables/7_locations.typ"

      #include src + "999_outro.typ"
    ],
  )
}

#import "@preview/markly:0.3.0"
#import "template.typ": bloodstained-template
#import "utils.typ": page_illustration

// This variable is the source of truth for the current version
// of the book contents
#let version = "Beta 7"

#let bloodstained-fangs(language, markly-context, subtitle, description, contents, pagetext) = {
  let src = "src/" + language + "/"
  show: markly.page-setup.with(markly-context)

  show: bloodstained-template(
    version,
    markly-context,
    subtitle,
    description,
    contents,
    pagetext,
    [
      // Include all chapters in order
      #include src + "1_intro.typ"

      #page_illustration("art/vamp_girl_feeding.webp", markly-context)
      #if markly-context.bleed == 0pt {
        page_illustration("art/werewolf.jpg", markly-context)
      }

      #include src + "2_setting_intro.typ"

      #page_illustration("art/dance.jpg", markly-context)

      #include src + "3_characters.typ"

      #page_illustration("art/wounded_witch.jpg", markly-context)
      #page_illustration("art/alley_standoff.jpg", markly-context)

      #include src + "4_rules.typ"

      #page_illustration("art/city.jpg", markly-context)

      #include src + "5_setting.typ"

      #if language == "eng" {
        page_illustration("art/science.jpg", markly-context)
      }
      #page_illustration("art/money.webp", markly-context)

      #include src + "6_factions.typ"

      #page_illustration("art/delivery.jpg", markly-context)
      #page_illustration("art/priest_mercenary.jpg", markly-context)

      #include src + "7_creatures.typ"

      #if language == "ita" {
        page_illustration("art/science.jpg", markly-context)
      }
      #page_illustration("art/cops.jpg", markly-context)

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

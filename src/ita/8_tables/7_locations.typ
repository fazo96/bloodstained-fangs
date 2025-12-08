#import "../../../utils.typ": keep_together, matrix_d6, rpg_table, table_d66, table_d66_double



#pagebreak()
#keep_together[
  === Luoghi

  Ogni angolo della Città nasconde qualcosa: un affare in corso, un cadavere che si raffredda o peggio.

  #rpg_table(
    columns: (auto, 1fr, auto, 1fr),
    [D6],
    [Distretto],
    [D6],
    [Distretto],
    [1],
    [Il Porto],
    [2],
    [Lungomare],
    [3],
    [Centro],
    [4],
    [Bassifondi],
    [5],
    [Foresta di Misty Park],
    [6],
    [Riverside],
  )

  #keep_together[
    #rpg_table(
      columns: (auto, 1fr, 1fr, 1fr),
      [],
      [Il Porto],
      [Lungomare],
      [Centro],
      [1],
      [Magazzino],
      [Locale in Spiaggia],
      [Ufficio ai Piani Alti],
      [2],
      [Cantiere Navale],
      [Falò],
      [Hotel di Lusso],
      [3],
      [Yacht di Lusso],
      [Bar in Spiaggia],
      [Trattoria di Lusso],
      [4],
      [Nave Cargo],
      [Negozio di Surf],
      [Sede Aziendale],
      [5],
      [Molo Deserto],
      [Motel sul Mare],
      [Ditta di Sicurezza],
      [6],
      [Covo di Contrabb.],
      [Faro],
      [Attico],
    )

    #rpg_table(
      columns: (auto, 1fr, 1fr, 1fr),
      [],
      [Bassifondi],
      [Riverside],
      [Misty Park],
      [1],
      [*Shatter*],
      [Stazione Treni],
      [*Big House*],
      [2],
      [Edificio in Rovina],
      [Passeggiata],
      [Guardia Forestale],
      [3],
      [Covo della Droga],
      [Sottopassaggio],
      [Sentiero],
      [4],
      [Banco dei Pegni],
      [Terminale Merci],
      [Boschetto Nasc.],
      [5],
      [Casinò Losco],
      [Caffè Romantico],
      [Capanno Crollato],
      [6],
      [Bar dei Vicoli],
      [Molo dei Traghetti],
      [Cerchio di Pietre],
    )
  ]
]


#pagebreak()
==== Altri Luoghi

Non tutte le scene avvengono nei luoghi ovvi: a volte hai bisogno di un posto fuori dai sentieri battuti.

#table_d66_double(
  (
    [Edificio Abbandonato],
    [Vicolo Cieco],
    [Bettola],
    [Parcheggio Multipiano],
    [Tetto],
    [Seminterrato],
    [Appartamento Inagibile],
    [Banco dei Pegni],
    [Tavola Calda Notturna],
    [Strip Club],
    [Studio di Tatuaggi],
    [Lavanderia a Gettoni],
    [Minimarket],
    [Stazione di Servizio],
    [Camera di Motel],
    [Banchina della Metro],
    [Cimitero],
    [Impresa Funebre],
    [Libreria Occulta],
    [Salotto del Veggente],
    [Negozio di Antiquariato],
    [Poligono di Tiro],
    [Palestra di Boxe],
    [Fabbrica Abbandonata],
    [Deposito],
    [Parcheggio],
    [Sottopassaggio],
    [Accesso alle Fogne],
    [Teatro],
    [Casinò Chiuso],
    [Clochard Accampati],
    [Covo della Droga],
    [Officina Illegale],
    [Fight Club Illegale],
    [Mercato Nero],
    [Clinica Illegale],
  ),
  [Luogo],
)

#pagebreak()
==== Particolarità del Luogo

Ogni luogo ha la sua atmosfera: qualcosa che imposta l'umore prima che il sangue inizi a scorrere.


#table_d66_double(
  (
    [Tetro],
    [Frenetico],
    [Ombroso],
    [Sereno],
    [Fatiscente],
    [Vivace],
    [Inquietante],
    [Accogliente],
    [Minaccioso],
    [Tranquillo],
    [Desolato],
    [Animato],
    [Antico],
    [Luminoso],
    [In Rovina],
    [Pacifico],
    [Spettrale],
    [Moderno],
    [Claustrofobico],
    [Spazioso],
    [Invitante],
    [Buio],
    [Colorato],
    [Umido],
    [Pulito],
    [Sinistro],
    [Ordinario],
    [Marcio],
    [Elegante],
    [Isolato],
    [Ospitale],
    [Degradato],
    [Affollato],
    [Spoglio],
    [Sicuro],
    [Familiare],
  ),
  [Particolarità],
)

#pagebreak()
==== Luogo Segreto all'Interno

Dietro porte chiuse e passaggi nascosti, i veri orrori della Città attendono nell'oscurità.


#table_d66(
  (
    [Caveau],
    [Caveau],
    [Nascondiglio],
    [Nascondiglio],
    [Biblioteca],
    [Biblioteca],
    [Sala d'Arte],
    [Sala d'Arte],
    [Sala delle Reliquie],
    [Sala delle Reliquie],
    [Santuario],
    [Santuario],
    [Sala Conferenze],
    [Sala Conferenze],
    [Passaggio verso altrove],
    [Passaggio verso altrove],
    [Tomba],
    [Tomba],
    [Camera Rituale],
    [Camera Rituale],
    [Camera delle Torture],
    [Camera delle Torture],
    [Laboratorio],
    [Laboratorio],
    [Osservatorio],
    [Osservatorio],
    [Cripta],
    [Cripta],
    [Tempio],
    [Tempio],
    [Prigione],
    [Prigione],
    [Armeria Segreta],
    [Santuario Nascosto],
    [Archivio Proibito],
    [Camera del Sangue],
  ),
  [Stanza Segreta],
)

#import "../../../utils.typ": keep_together, matrix_d6, rpg_table, table_d66



#pagebreak()
=== Tabelle dei Personaggi

#keep_together[
  ==== Prima Impressione

  Le prime impressioni contano nella notte: cosa cattura la tua attenzione quando questo personaggio entra in scena?

  #matrix_d6(
    (
      [Inquietante],
      [Esile],
      [Adorno],
      [Anziano],
      [Attraente],
      [Spavaldo],
      [Nerboruto],
      [Atletico],
      [Affascinante],
      [Vissuto],
      [Nascosto],
      [Giovanile],
      [Eccentrico],
      [Energico],
      [Appariscente],
      [Grazioso],
      [Terribile],
      [Smunto],
      [Ferito],
      [Imponente],
      [Grosso],
      [Maestoso],
      [Comune],
      [Composto],
      [Cicatrizzato],
      [Trasandato],
      [Losco],
      [Malaticcio],
      [Timoroso],
      [Eccentrico],
      [Attraente],
      [Grosso],
      [Atletico],
      [Sicuro],
      [Traballante],
      [Alto],
    ),
  )
]

#keep_together[
  ==== Obiettivo del Personaggio

  Ogni anima nell'oscurità persegue qualcosa, che lo sappia o no.

  #matrix_d6(
    (
      [Vendica torto],
      [Trova casa],
      [Costruire relazione],
      [Reclama risorsa],
      [Riscuoti debito],
      [Crea oggetto],
      [Cura male],
      [Sconfiggi rivale],
      [Difendi persona],
      [Difendi luogo],
      [Scopri verità],
      [Ferma conflitto],
      [Fuggi carceriere],
      [Combatti ingiustizia],
      [Trova persona],
      [Stringi alleanza],
      [Acquisire conoscenza],
      [Ottieni ricchezze],
      [Mantieni ordine],
      [Fai accordo],
      [Ottieni oggetto],
      [Paga debito],
      [Proteggi mortale],
      [Proteggi segreto],
      [Dimostra valore],
      [Ribellati],
      [Confuta menzogna],
      [Zittisci mortale],
      [Risolvi disputa],
      [Ripristina relazione],
      [Mina relazione],
      [Assicurati risorsa],
      [Cerca redenzione],
      [Prendi potere],
      [Risolvi mistero],
      [Diffondi fede],
    ),
  )
]

#keep_together[
  ==== Disposizione Iniziale

  Come reagisce questo personaggio al primo incontro con l'ignoto?

  In questa tabella, tira 2D6 e somma i risultati.

  #rpg_table(
    columns: (auto, 1fr),
    [2D6],
    [Disposizione],
    [2],
    [Amichevole],
    [3-4],
    [Curioso],
    [5-7],
    [Sospettoso],
    [8-9],
    [Bisognoso],
    [10-11],
    [Disperato],
    [12],
    [Esigente],
  )
]

#keep_together[
  ==== Competenza

  La sopravvivenza nelle ombre richiede abilità: cosa ha ottenuto questo personaggio per sopravvivere?

  #matrix_d6(
    (
      [Vita di strada],
      [Armi da fuoco],
      [Persuasione],
      [Camuffamento],
      [Info vita notturna],
      [Furtività],
      [Esperto di tecnologia],
      [Etichetta sociale],
      [Legge],
      [Sicurezza di base],
      [Autodifesa],
      [Negoziazione],
      [Scassinare],
      [Falsificazione],
      [Basi di hacking],
      [Basi mediche],
      [Tracciare],
      [Cacciare],
      [Autodifesa],
      [Negoziazione],
      [Addestrare animali],
      [Scassinare],
      [Falsificazione],
      [Esibirsi],
      [Basi di hacking],
      [Basi mediche],
      [Tracciare],
      [Cacciare],
      [Intimidazione],
      [Investigazione],
      [Arti marziali],
      [Linguistica],
      [Parkour],
      [Rete di contatti],
      [Alchimia],
      [Combattimento di strada],
    ),
  )
]

#pagebreak()
==== Occupazione Mortale

Di giorno indossano una maschera di normalità: quale ruolo svolgono nel mondo mortale?

#table_d66(
  (
    [Barman],
    [Agente di Polizia],
    [Investigatore Privato],
    [Giornalista],
    [Dottore],
    [Infermiere],
    [Insegnante],
    [Avvocato],
    [Assistente Sociale],
    [Agente Immobiliare],
    [Cameriere],
    [Musicista],
    [Artista],
    [Grafico],
    [Sviluppatore Web],
    [Barista],
    [Contabile],
    [Analista Finanziario],
    [Ricercatore Scientifico],
    [Guardia di Sicurezza],
    [Chef],
    [Truccatore],
    [Stilista],
    [Fotografo],
    [Storico],
    [Bibliotecario],
    [Tatuatore],
    [Idraulico],
    [Elettricista],
    [Falegname],
    [Meccanico],
    [Organizzatore di Eventi],
    [Organizzatore No-Profit],
    [Istruttore di Fitness],
    [Parrucchiere],
    [Insegnante di Canto],
  ),
  [Occupazione],
)

#pagebreak()
==== Caratteristica Rivelata

Sotto la superficie giace una verità più profonda: cosa definisce questo personaggio quando la facciata cade?

#table_d66(
  (
    [Dipendente],
    [Crudele],
    [Infame],
    [Pieno di risorse],
    [Avventuroso],
    [Astuto],
    [Influente],
    [Riservato],
    [Afflitto],
    [Pericoloso],
    [Insensibile],
    [Egoista],
    [Aggressivo],
    [Ingannevole],
    [Perspicace],
    [Socievole],
    [Ambizioso],
    [Provocatorio],
    [Intelligente],
    [Saggio],
    [Arrabbiato],
    [Determinato],
    [Ansioso],
    [Audace],
    [Ingegnoso],
    [Disabile],
    [Esperto],
    [Pieno di rimorsi],
    [Avaro],
    [Apatico],
    [Coraggioso],
    [Condannato],
    [Gentile],
    [Stoico],
    [Amareggiato],
    [Motivato],
  ),
  [Caratteristica],
)

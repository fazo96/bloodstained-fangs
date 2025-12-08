#import "../../utils.typ": info-box, keep_together, rpg_table

// TODO: traduci in italiano

#pagebreak()
#keep_together[
  == Regole

  _Bloodstained Fangs_ è un Gioco di Ruolo in Solitario minimalista progettato per essere giocato con un solo personaggio (il Protagonista). Lo guiderai attraverso la storia che si dipanerà durante il gioco, ponendo domande chiuse a un Oracolo che ti aiuterà a ribaltare le tue aspettative.

  Di tanto in tanto sarai sorpreso da un colpo di scena inaspettato!

  === Mantieni l'Azione in Movimento

  Una partita a _Bloodstained Fangs_ è una successione di scene.
  Una scena è un'unità di tempo in cui si svolge una certa azione per perseguire un determinato obiettivo a breve termine.

  In _Bloodstained Fangs_, in ogni scena:
  + *Identifica cosa ti aspetti dalla scena*. Rispetto ai tratti, l'obiettivo e la motivazione determinano l'azione del Protagonista. Quale potrebbe essere la reazione del mondo di gioco?
  + *Metti alla prova le tue aspettative*. Quando sei incerto (o troppo sicuro) sulla reazione alle tue azioni, poni all'Oracolo una domanda chiusa (la risposta è Sì o No), considerando i tag coinvolti per determinare se c'è un Vantaggio o uno Svantaggio.
  + *Interpreta il risultato*. La risposta dell'Oracolo è in linea con le tue aspettative? Se no, nel contesto in cui si svolge la scena, come dovrebbe essere considerata una risposta che le sovverte?

  Questa sequenza ti verrà naturale dopo un po' di pratica. Usala come linea guida le prime volte.
]

#keep_together[
  === Consultare l'Oracolo

  Quando devi mettere alla prova le tue aspettative, porrai all'Oracolo una domanda chiusa.

  Avrai bisogno di 2d6 di un colore (*Dadi Chance*) e 2d6 di un altro (*Dadi Rischio*).

  Per risolvere una domanda chiusa, tira un *Dado Chance* e un *Dado Rischio*:
  - Se il Dado Chance è più alto, la risposta è *Sì*.
  - Se il Dado Rischio è più alto, la risposta è *No*.
  - Se entrambi sono bassi (3 o meno), aggiungi un *ma...*.
  - Se entrambi sono alti (4 o più), aggiungi un *e...*.
  - Se entrambi sono uguali, la risposta è *Sì, ma...*. Aggiungi un punto al *Contatore dei Colpi di Scena*.


  #rpg_table(
    columns: (auto, 1fr, 1fr),
    [Valore Dadi],
    [Chance > Rischio],
    [Rischio > Chance],
    [Entrambi ≤ 3],
    [Sì, ma...],
    [No, ma...],
    [Entrambi ≥ 4],
    [Sì, e...],
    [No, e...],
    [Diseguali],
    [Sì],
    [No],
    [Uguali],
    [Sì, ma... Aggiungi 1 al Contatore dei Colpi di Scena],
    [],
  )
]

#keep_together[
  === Vantaggio e Svantaggio

  Se le circostanze o i tag positivi conferiscono un vantaggio, aggiungi un *Dado Chance* al tiro. Altrimenti, quando ostacoli o tag negativi causano uno svantaggio, aggiungi un *Dado Rischio*. In entrambi i casi, tieni solo il dado più alto del tipo aggiunto quando controlli il tiro.

  Considera i tag *intuitivamente e non quantitativamente*, usando il contesto della situazione in gioco. È importante mantenere il flusso di gioco veloce e non calcolare vantaggi e svantaggi numericamente!
]

#keep_together[
  === Contatore dei Colpi di Scena

  Il Contatore dei Colpi di Scena è una misura della tensione crescente nella narrazione. All'inizio è impostato a 0. Ogni volta che si verifica un tiro doppio (i dadi sono uguali), aggiungi 1 al Contatore. Se il Contatore è inferiore a tre, considera la risposta come "*Sì, ma...*". Altrimenti si verifica un *Colpo di Scena* e il Contatore si azzera.

  Tira 2d6 e consulta la seguente Tabella dei Colpi di Scena per determinare che tipo di colpo di scena accade.

  #rpg_table(
    columns: (auto, 1fr, 1fr),
    [D6],
    [Soggetto],
    [Azione],
    [1],
    [Una terza parte],
    [Appare],
    [2],
    [L'eroe],
    [Altera il luogo],
    [3],
    [Un incontro],
    [Aiuta l'eroe],
    [4],
    [Un evento fisico],
    [Ostacola l'eroe],
    [5],
    [Un evento emotivo],
    [Cambia l'obiettivo],
    [6],
    [Un oggetto],
    [Termina la scena],
  )

  Interpreta la frase di due parole nel contesto della scena corrente. I colpi di scena manterranno la trama e gli eventi in movimento in modi inaspettati.
]

#keep_together[
  === Umanità

  Ogni essere soprannaturale vive in costante guerra tra la propria anima umana e la bestia che cerca di uscire. Per i Vampiri, la bestia è *la fame*—una brama insaziabile di sangue. Per i Licantropi, erompe con la luna piena, straziando carne e ragione allo stesso modo. Per i Maghi, la magia scorre attraverso di loro come veleno, deformando mente e anima con ogni incantesimo.

  *Quando crei un personaggio, imposta la sua Umanità a 6*.

  Se appropriato per il tuo personaggio, sentiti libero di iniziare la tua storia con un valore di Umanità diverso, in linea con il background e la storia del tuo personaggio.

  *In ogni caso, l'Umanità massima è 9*. Anche i personaggi umani normali dovrebbero tracciare l'umanità: non si sa mai quando arriverà una svolta oscura.

  #info-box[
    Levi è un rinomato assassino a pagamento. Un giorno, mentre caccia un bersaglio in un magazzino abbandonato, prende un proiettile nel petto e sviene, per poi risvegliarsi guarito pochi minuti dopo. La vita gli è stata salvata da poteri magici appena risvegliati, a lungo dormienti nel suo corpo, ma non è quello che dice a se stesso. Crede che sia un atto di Dio e decide di cambiare vita. Levi inizia la sua storia con un'Umanità di 3, per via del suo passato da assassino, e il tag Rigenerazione Magica dovuto ai suoi nuovi poteri.
  ]
]

#keep_together[
  ==== Essere un Vampiro

  I Vampiri devono drenare la forza vitale dei mortali per sopravvivere (sia Vampiri dell'Anima che del Sangue).

  *Per ogni notte che passi senza nutrirti, perdi 1 Umanità*. La fame ti divora, erodendo ciò che resta della tua anima.

  Quando ti nutri con successo, *guadagni 3 Umanità* (massimo 9). Tuttavia, se ferisci la tua preda mentre ti nutri—o vieni interrotto a metà banchetto—*guadagni solo 1 Umanità*. Il senso di colpa persiste.
]

#keep_together[
  ==== Essere un Licantropo

  I Licantropi combattono una battaglia persa contro la loro natura bestiale, incatenati al ciclo della Luna. Di notte, *quando vivi una situazione tesa o un'emozione travolgente, senti il richiamo della Luna*. Se c'è la Luna Piena, la trasformazione è inevitabile—*devi trasformarti e perdere 1 Umanità*. Altrimenti, tira un d6 per vedere se riesci a resistere:

  - Se tiri un 1 o meno della tua Umanità, rimani umano. Il richiamo della Luna svanisce, almeno per ora.
  - Se tiri un 6 o uguale/superiore alla tua Umanità, il potere della Luna scorre attraverso di te. Puoi trasformarti nella bestia o resistere al richiamo. Se resisti, *guadagna 1 Umanità* e rimani umano—immagina la lotta, i ricordi e le emozioni che ti ancorano alla tua umanità. Se cedi, *perdi 1 Umanità* mentre pelliccia e zanne prendono il sopravvento.

  Puoi anche trasformarti in Lupo se la situazione lo richiede, come durante un rituale. Quando lo fai, *perdi 1 Umanità*.
]

#keep_together[
  #info-box[
    Quando tiri un d6 per vedere se riesci a resistere, se tiri un 1 rimani sempre umano. Se tiri un 6 puoi sempre scegliere di trasformarti nella bestia.
  ]

  *Quando sei trasformato in Lupo*, tira con vantaggio su tutte le azioni violente in cui agisci in modo aggressivo. La bestia ha il controllo. Tuttavia, tira con svantaggio quando cerchi di evitare il pericolo, la violenza o di calmarti. Non puoi attingere ai tuoi poteri soprannaturali in questo stato: li stai già usando alla massima capacità.

  *Quando sorge l'alba*, ti ritrasformi in forma umana. Puoi anche tornare indietro se la situazione lo richiede o se qualcuno riesce a calmare la bestia dentro di te.

  In forma umana, puoi *sfruttare il soprannaturale* per tirare l'Oracolo con vantaggio, attingendo ai tuoi poteri rigenerativi e alla forza e velocità potenziate.
]

#keep_together[
  ==== Sfruttare il Soprannaturale

  Puoi *attingere ai tuoi poteri soprannaturali*—un'abilità, un equipaggiamento, poteri magici o l'oscurità interiore—per tirare l'Oracolo con vantaggio, supponendo che tu abbia qualcosa che conferisca un vantaggio in questa specifica situazione.

  Le abilità soprannaturali hanno spesso un prezzo: ogni volta che attingi ai tuoi poteri, potresti perdere Umanità.

  *Non sempre paghi questo prezzo. Chiediti:*

  + Mi sto spingendo oltre i miei limiti, disperato?
  + Sto oltrepassando limiti normalmente invalicabili?
  + Sto alimentando questo potere consumando l'anima?
  + Con quello che sto facendo sto diventando un mostro?

  *Se sì a una qualsiasi*—paghi il prezzo. *Se no*—stai solo usando le abilità e l'equipaggiamento che hai e non paghi il prezzo.

  *Quando sfrutti il soprannaturale e paghi il prezzo:*

  + *Immagina* come il potere ti dà un vantaggio.
  + *Riduci la tua Umanità* di uno mentre qualcosa dentro di te avvizzisce.
  + *Tira un d6*. Se è un 6 o superiore alla tua Umanità, tira sulla tabella del Contraccolpo Mistico: il potere si ritorce contro. Se è un 1 o è uguale o inferiore alla tua Umanità, mantieni il controllo, per ora. Tira con vantaggio, cavalcando il filo del rasoio tra umano e mostro.

  #info-box[
    Quando tiri un 1, mantieni il controllo indipendentemente dalla tua Umanità. Allo stesso modo, quando tiri un 6, perdi sempre il controllo.
  ]

]

#keep_together[
  ==== Contraccolpo Mistico

  #rpg_table(
    columns: 5,
    [],
    [Mortale],
    [Vampiro],
    [Licantropo],
    [Mago],
    [1],
    [Il tuo oggetto o tecnica fallisce],
    [La sete ti travolge e perdi il controllo],
    [I tuoi denti diventano zanne di lupo per un po'],
    [Ti si ritorce contro],

    [2],
    [L'oggetto o la tecnica non è come ti aspettavi],
    [Ti viene un occhio rosso intriso di sangue],
    [Non puoi fare a meno di ululare molto forte],
    [Manca il bersaglio, danneggiando qualcosa],

    [3],
    [Il tuo corpo è contaminato o ferito],
    [La tua pelle diventa bluastra a causa dello sforzo],
    [Il tuo petto in espansione strappa i tuoi vestiti],
    [Soffri un dolore travolgente a causa dello sforzo],
  )

  #rpg_table(
    columns: 5,
    [],
    [Mortale],
    [Vampiro],
    [Licantropo],
    [Mago],

    [4],
    [La tua mente è distorta per un po'],
    [Sei tormentato da visioni tremende e dolore travolgente],
    [Sei sconvolto e fuggi dalla scena],
    [Svieni a causa dello sforzo],

    [5],
    [L'effetto è molto più debole di quanto volevi],
    [La sete ti travolge e sei costretto a scappare],
    [Ti comporti da lupo per un po'],
    [L'effetto è molto più debole di quanto volevi],

    [6],
    [L'effetto è molto più forte di quanto volevi],
    [L'effetto è molto più forte di quanto volevi],
    [L'effetto è molto più forte di quanto volevi],
    [L'effetto è molto più forte di quanto volevi],
  )
]

#pagebreak()
#keep_together[
  ==== Perdere tutta l'Umanità

  Quando la tua Umanità raggiunge lo zero, la bestia vince. Immagina come prende il sopravvento completamente, distruggendo o ferendo gravemente qualcosa o qualcuno che ami. L'orrore di ciò che hai fatto ti riporta alla realtà. Imposta la tua Umanità a 2 mentre ti riprendi dalla devastazione che hai causato.
]

#keep_together[
  ==== Recuperare Umanità

  Quando compi un atto significativo che contraddice o mina la tua natura soprannaturale—sfidando i tuoi istinti, rifiutando il potere, sacrificando lo status—puoi recuperare 1 Umanità.

  Puoi anche recuperare Umanità attraverso mezzi straordinari all'interno della narrazione, o trascorrendo molto tempo astenendoti da attività soprannaturali. La redenzione è possibile, ma mai facile.

  Alcune persone si aggrappano alla *Fede*. Confessano i loro peccati nelle chiese, pregano per il perdono e recuperano 1 Umanità. Il Signore ama e perdona tutti i Suoi figli—anche i mostri—purché abbiano anche solo un briciolo di Umanità rimasta. Se scegli questa strada, immagina come la Fede del tuo personaggio diventi un'ancora di salvezza contro l'oscurità che lo consuma.
]

#keep_together[
  === Conflitti

  Un _Conflitto_ è una qualsiasi situazione in cui gli avversari si scontrano, attaccando, difendendo o logorandosi a vicenda per vincere.
  Questo vale sia in senso pratico che metaforico.

  Quindi, un Conflitto non è limitato solo al combattimento (o alla lotta) in senso stretto, ma anche a situazioni competitive (come gare, duelli, confronti verbali, ecc.) in cui due o più personaggi (inclusi i veicoli, ovviamente!) competono.

  I conflitti possono essere risolti in modi diversi a seconda delle preferenze e del contesto:
  + Poni una singola domanda chiusa. La risposta dell'Oracolo determina l'esito del conflitto.
  + Poni una serie di domande chiuse per risolvere singole azioni correnti.
  + Usa le regole di Danno & Fortuna qui sotto.
]

#keep_together[
  Nota che il Contatore dei Colpi di Scena *non si applica* a Danno & Fortuna. Invece, viene usato regolarmente se il Conflitto è gestito con domande chiuse.

  Se il conflitto viene risolto applicando danni al tratto Fortuna, tira i dadi per determinare se il protagonista causa danni all'avversario o subisce danni a causa di un contrattacco o di una difesa fallita. I tiri sono effettuati solo dal giocatore.

  Il danno riduce la Fortuna del bersaglio, che sia protagonista o PNG. Quando la Fortuna si esaurisce, il personaggio ha perso il conflitto.

  L'esito finale dipende dal contesto. Vieni catturato? Sei gravemente ferito? Potresti anche morire se ciò si adatta alla narrazione.
]

#keep_together[
  #rpg_table(
    columns: 3,
    [Risposta],
    [Ottieni ciò che vuoi?],
    [Danno],
    [Sì, e...],
    [Ottieni ciò che vuoi, e qualcos'altro.],
    [Causa 3],
    [Sì...],
    [Ottieni ciò che vuoi.],
    [Causa 2],
    [Sì, ma...],
    [Ottieni ciò che vuoi, ma a un costo.],
    [Causa 1],
    [No, ma...],
    [Non ottieni ciò che vuoi, ma non è una perdita totale.],
    [Subisci 1],
    [No...],
    [Non ottieni ciò che cercavi.],
    [Subisci 2],
    [No, e...],
    [Non ottieni ciò che vuoi, e le cose peggiorano.],
    [Subisci 3],
  )
]

#keep_together[
  === Determinare l'atmosfera della prossima scena

  Alla fine della scena corrente a volte avrai chiara la direzione da prendere, altre volte potresti aver bisogno di determinare l'atmosfera generale della prossima. In questo caso tira 1d6 e consulta la seguente tabella:

  #rpg_table(
    columns: (auto, 1fr),
    [D6],
    [Prossima Scena],
    [1-3],
    [Scena drammatica],
    [4-5],
    [Scena tranquilla],
    [6],
    [Nel frattempo…],
  )
]

#keep_together[
  - Una *scena drammatica* non rompe la tensione della scena precedente ma la porta ulteriormente avanti, introducendo ulteriori ostacoli o difficoltà.
  - Durante una *scena tranquilla* c'è tempo per prendere fiato, curarsi, fare piani per i prossimi passi e approfondire le relazioni.
  - Una *scena "nel frattempo"* si svolge altrove, in un luogo diverso da dove si trova l'eroe. Stacca sui cattivi o su altri personaggi importanti per la trama.
]

#pagebreak()
#keep_together[
  === Domande Aperte o Ispirazione

  Per rispondere a una domanda Aperta, tira 1d6 una volta su ciascuna delle Tabelle di Ispirazione (tira almeno un verbo e un sostantivo, gli aggettivi sono facoltativi).

  === Quando la storia finisce

  Alla fine dell'avventura puoi aggiungere un altro tratto al personaggio. È meglio che questo sia correlato a come è appena finita la storia e può essere un'Abilità, un Equipaggiamento, una nuova Fragilità o persino una nuova Nemesi! Puoi anche modificare un tratto esistente per rappresentare meglio una competenza migliorata.

  Aggiorna anche l'elenco di *PNG*, *Luoghi* ed *Eventi* che potrebbero riapparire in future avventure.
]

#keep_together[
  === Giocare in Gruppo

  Sebbene _Bloodstained Fangs_ sia progettato principalmente per il *gioco in solitario*, le sue meccaniche possono essere adattate per *sessioni di gruppo*. Poiché il gioco deriva da *Freeform Universal*, non c'è nulla che ti impedisca di giocarlo con altri—se lo desideri davvero. Preparati solo a dover adattare le cose in certi casi.

  Ci sono due modi principali per giocare in gruppo:

  ==== Senza Game Master (Modalità GM-less)

  - Ogni giocatore controlla il proprio *Protagonista* e pone domande all'*Oracolo*, proprio come nel gioco in solitario.
  - Le *risposte dell'Oracolo e le reazioni del mondo* sono interpretate dal giocatore che ha posto la domanda.
  - Un *Facilitatore* (ruolo a rotazione o fisso) aiuta a *moderare*, *ricordare le regole* ai giocatori e *risolvere le dispute* se necessario.
  - Le domande che riguardano l'*intero gruppo* dovrebbero essere discusse collettivamente.
]

#keep_together[
  ==== Con un Game Master

  - Il *GM non tira i dadi*—solo i giocatori consultano l'Oracolo.
  - Il GM interpreta le risposte dell'Oracolo e presenta le *reazioni del mondo*.
  - Il GM agisce anche come *facilitatore*, guidando il flusso della storia e aiutando a risolvere le domande.
]

# Progetto Analisi Dati: Terre Sabine (Analisi Vendite Ortofrutta)

## 🎯 Obiettivo del Progetto
Creazione di una pipeline di analisi dati completa, dal sistema gestionale fino alla visualizzazione strategica, per monitorare le performance di vendita del comparto ortofrutta nel quadriennio 2022-2025.

## 🛠 Tech Stack
* **Gestionale:** Geco (Estrazione dati grezzi).
* **Automazione & ETL:** Python (`Pandas`, `glob`, `os`) per la pulizia e trasformazione dati.
* **Business Intelligence:** Power BI per il modeling e la visualizzazione.

## 🚀 Workflow di Lavoro

### 1. Estrazione Dati (Geco)
I dati sono stati estratti dal gestionale aziendale **Geco**. L'esportazione generava file con formati non strutturati (celle vuote, intestazioni ripetute, struttura orizzontale), richiedendo un intervento di normalizzazione.

### 2. ETL con Python (Parsing & Trasformazione)
È stato sviluppato uno script Python per automatizzare la trasformazione dei file grezzi in un formato tabellare pronto per l'analisi.
* **Parsing:** Lettura riga per riga per identificare blocchi di prodotti, quantità e prezzi.
* **Normalizzazione:** Conversione della struttura dati da orizzontale a verticale.
* **Arricchimento:** Inserimento della colonna `Anno` per ogni record, permettendo l'analisi storica.
* **Consolidamento:** Utilizzo di `glob` e `pandas` per la scansione ricorsiva delle sottocartelle e l'unione dei file in un unico dataset (`Database_Vendite_Completo.xlsx`).

### 3. Modellazione (Star Schema in Power BI)
Il database consolidato è stato importato in **Power BI** seguendo le logiche del modello a stella (Star Schema):
* **Fact Table:** `Vendite` (dati transazionali puliti).
* **Dimension Tables:** `Dim_Prodotti` e `Dim_Supermercati` (estratte tramite `drop_duplicates` per garantire l'integrità referenziale).
* **Time Intelligence:** Creazione di una tabella Calendario per il calcolo di metriche *Year-over-Year (YoY)*.

---

## 📊 Risultati Attesi
La dashboard finale abilita le seguenti analisi:
* **Trend Storico:** Analisi delle performance di vendita 2022-2025.
* **Stagionalità:** Monitoraggio dei volumi e dei prezzi medi per varietà di prodotto.
* **Benchmarking:** Confronto delle vendite tra diversi punti vendita.
* **Operational Efficiency:** Monitoraggio dello scostamento tra volumi venduti e obiettivi commerciali.

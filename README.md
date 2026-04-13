# Analisi Pandemia COVID-19: Focus Europeo 📊

Questo progetto accademico si propone di analizzare l'andamento della pandemia di COVID-19 con un focus specifico su alcune nazioni europee 
(**Italia, Germania, Francia e Spagna**). 

Attraverso l'utilizzo di **Python**, sono stati esaminati i flussi dei contagi, la pressione sulle terapie intensive e la qualità dei dati forniti nel dataset globale.

## 🛠 Fase di Auditing e Pre-processing
Prima di procedere con le analisi specifiche, è stata effettuata una fase di auditing sul dataset per garantirne la coerenza statistica:

* **Gestione degli Aggregati:** È stata rilevata la presenza di entità aggregate (es. *Asia, Europe, Low income countries*).
Queste righe sono state identificate e filtrate tramite la colonna `continent` (valori NaN) per evitare duplicazioni nei calcoli.
* **Validazione Metodologica:** È stata verificata la natura della colonna `new_cases`. 
Per calcolare l'impatto complessivo, è stata utilizzata la **somma dei flussi giornalieri** (`.sum()`), validando che l'uso del valore massimo (`.max()`) avrebbe sottostimato drasticamente i dati reali.

---

## 📈 Risultati dell'Analisi

### 1. Evoluzione dei Casi in Italia (2022)
Confronto tra i **Casi Totali** (dato cumulativo) e i **Nuovi Casi Giornalieri**.
* La curva dei casi totali mostra una crescita costante.
* I nuovi casi presentano un andamento "a pettine", dovuto alla modalità di recording dati settimanale.

### 2. Confronto Terapie Intensive (ICU)
Utilizzo di **Boxplot** per confrontare la distribuzione dei pazienti in terapia intensiva (Maggio 2022 - Aprile 2023):
* **Italia:** Maggiore stabilità e minor numero di ricoveri ICU nel periodo considerato.
* **Germania:** Maggiore volatilità con picchi di occupazione della terapia significativi.
* **Francia:** Pressione costante con una mediana di ricoveri elevata ma più stabile rispetto alla Germania.

### 3. Ospedalizzazioni e Qualità del Dato (2021)
Analisi dell'integrità dei dati per Italia, Germania, Francia e Spagna:
* **Risultato critico:** La **Germania** presenta 365 dati nulli su 365 nella colonna `hosp_patients`. 
* **Conclusione tecnica:** L'analisi quantitativa per questa nazione è risultata impossibile, confermando
* l'importanza di una verifica preliminare dell'integrità del dato prima di applicare tecniche di imputazione del dato stesso.

---

## 💡 Conclusioni
L'analisi evidenzia come la **frequenza di aggiornamento** e la **completezza dei database** siano variabili fondamentali tanto quanto i numeri assoluti. 
Il progetto dimostra come l'uso combinato di diversi strumenti grafici (*Lineplot* vs *Boxplot*)
sia essenziale per rivelare dettagli sulla stabilità dei sistemi sanitari nazionali.

> [!NOTE]
> **Nota sui dati:** I numeri rappresentano i casi ufficialmente confermati. I numeri reali potrebbero essere superiori, 
specialmente in contesti dove il tracciamento è stato meno sistematico (es. continente africano, che registra solo l'1.69% dei casi globali nel dataset).

---

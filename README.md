### 🔐 1. Scanner di porte base

**Obiettivo:**
- Scrivi uno script che accetti un indirizzo IP o hostname e una porta.
- Verifica se la porta è aperta usando `/dev/tcp` o un comando equivalente.
- Mostra un messaggio che indichi se la porta è aperta o chiusa.

**✅ Criteri di successo:**
- Lo script accetta due argomenti: host e porta.
- Ritorna un messaggio chiaro se la porta è aperta o chiusa.
- Gestisce errori (es. host non raggiungibile).

**💡 Sfida extra:**
- Aggiungi la possibilità di scansionare un range di porte (es. dalla 20 alla 80).
- Salva i risultati in un file di log con timestamp.

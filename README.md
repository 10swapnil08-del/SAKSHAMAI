# SakshamAI — Fixed Firebase + Tailwind + Flowbite project

## What was fixed
- Removed broken `./styles.css` import and uses the existing `index.css`.
- Connected the frontend to Firebase Authentication + Firestore.
- Added demo mode when Firebase env values are not configured.
- Fixed API endpoint mismatch (`/api/ai/*`).
- Added real `/api/progress` endpoint.
- Fixed teacher authorization to read the Firestore user role instead of relying on a missing Firebase custom claim.
- Added responsive mobile sidebar.
- Added persistent quiz progress and XP/streak updates.
- Kept Tailwind CSS v4 and Flowbite React dependency.

## Demo without Firebase
From `frontend`:
```bash
npm install
npm run dev
```
Open the Vite URL. You can create a demo account without Firebase credentials.

## Real Firebase
1. Create a Firebase project.
2. Enable Authentication > Email/Password.
3. Create Firestore.
4. Copy `.env.example` to `.env` and fill Firebase Web App config.
5. For backend, create a Firebase service account and set `FIREBASE_SERVICE_ACCOUNT_JSON`.
6. Run backend:
```bash
cd backend
python -m venv .venv
# Windows: .venv\\Scripts\\activate
# macOS/Linux: source .venv/bin/activate
pip install -r requirements.txt
uvicorn main:app --reload --port 8000
```

## Real AI
Set `OPENAI_API_KEY` and `OPENAI_MODEL` in `backend/.env`. The browser never receives the AI key; only FastAPI calls the model API.

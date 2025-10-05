# LittleSteps - Hackathon App

## What
Mobile app (Flutter) + FastAPI backend for AI-powered parenting tips & child profiles.

## Setup - Backend
1. cd ai_backend
2. pip install -r requirements.txt
3. export OPENAI_API_KEY="your_key"
4. uvicorn app:app --reload --host 0.0.0.0 --port 8000

## Setup - Flutter
1. cd flutter_app
2. flutter pub get
3. Add Firebase config files (google-services.json)
4. (Optional) run flutterfire configure to generate firebase_options.dart
5. run: flutter run (or build apk: flutter build apk)

## Notes
- Change BACKEND_URL in .env to deployed backend or local IP for testing on device.
- Ensure emulator uses 10.0.2.2 to reach localhost backend.

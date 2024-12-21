LOCAL_WEB_PORT=5555


.PHONY: start-dev build-dev


setup:
	@flutter clean && flutter pub get 


start-dev:
	@flutter run -d chrome --web-port ${LOCAL_WEB_PORT}


build-dev:
	@flutter build web --base-href /


build-prod:
	@flutter build web --base-href ${BASE_HREF}


test:
	@flutter test


lint:
	@flutter analyze

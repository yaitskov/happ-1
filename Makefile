happ-1: main.hs
	killall -9 happ-1 || echo
	ghc -threaded -o happ-1 main.hs
	./happ-1

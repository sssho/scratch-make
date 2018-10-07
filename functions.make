# For more detail, please refer to gnu make 3rd edhition section 4.2.1

words := he the hen other the%

filter:
	@echo he matches: $(filter he, $(words))
	@echo %he mathces: $(filter %he, $(words))
	@echo he%  mathces: $(filter he%, $(words))
	@echo %he% mathces: $(filter %he%, $(words))

filter-out:
	@echo not he: $(filter-out he, $(words))

findstring:
	@echo $(findstring /hoge/fuga, /hoge/mogera/piyo)
	@echo $(findstring /hoge/fuga, /hoge/fuga/piyo)

sources := hoge.c fuga.c piyo.c

subst:
	@echo $(subst .c,.o, $(sources))

numbers := one two three four five

words:
	@echo $(words $(numbers))

word-n:
	@echo $(word 2, $(numbers))

firstword:
	@echo $(firstword $(numbers))

lastword:
	@echo $(lastword $(numbers))

wordlist:
	@echo $(wordlist 2, 4, $(numbers))

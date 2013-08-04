SCREEN 9
OUT 888, 0
CALL HEADLINE
CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
DO
  SLEEP
  SELECT CASE INKEY$
    CASE CHR$(27): END
    CASE CHR$(49): CALL SINGLELED (1)
    CASE CHR$(50): CALL SINGLELED (2)
    CASE CHR$(51): CALL SINGLELED (3)
    CASE CHR$(52): CALL SINGLELED (4)
    CASE CHR$(53): CALL SINGLELED (5)
    CASE CHR$(54): CALL SINGLELED (6)
    CASE CHR$(55): CALL SINGLELED (7)
    CASE CHR$(56): CALL SINGLELED (8)
    CASE CHR$(97):
      ROUTEA:
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      ROUTEAQ1:
      LOCATE 12, 30
      PRINT "Wie oft soll die Schleife ablaufen?"
      LOCATE 13, 30
      INPUT "", tmp$
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      IF tmp$ = "" THEN 
        LOCATE 3, 30
        PRINT "Du musst einen Zahl angeben!"
        GOTO ROUTEAQ1
      ELSEIF ISNUMERIC%(tmp$) = 0 THEN
        LOCATE 3, 30
        PRINT "Du sollst Zahlen eingeben, keine Buchstaben!"
        GOTO ROUTEAQ1
      ELSE 
        l% = VAL(tmp$)
      END IF
      ROUTEAQ2:
      LOCATE 12, 30
      PRINT "Wie lang sind die Pausen in Sekunden?"
      LOCATE 13, 30
      INPUT "", tmp$
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      IF tmp$ = "" THEN 
        LOCATE 3, 30
        PRINT "Du musst einen Zahl angeben!"
        GOTO ROUTEAQ2
      ELSEIF ISNUMERIC%(tmp$) = 0 THEN
        LOCATE 3, 30
        PRINT "Du sollst Zahlen eingeben, keine Buchstaben!"
        GOTO ROUTEAQ2
      ELSE 
        e! = VAL(tmp$)
      END IF
      FOR i% = 1 TO l%
        FOR ii% = 1 TO 8
          CALL DRAWLED (1, ii%)
          OUT 888, 2 ^ (ii% - 1)
          CALL MSSLEEP (e!)
          CALL DRAWLED (0, ii%)
        NEXT ii%
      NEXT i%
      OUT 888, 0
    CASE CHR$(98): 
      ROUTEB:
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      ROUTEBQ1:
      LOCATE 12, 30
      PRINT "Wie oft soll die Schleife ablaufen?"
      LOCATE 13, 30
      INPUT "", tmp$
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      IF tmp$ = "" THEN 
        LOCATE 3, 30
        PRINT "Du musst einen Zahl angeben!"
        GOTO ROUTEBQ1
      ELSEIF ISNUMERIC%(tmp$) = 0 THEN
        LOCATE 3, 30
        PRINT "Du sollst Zahlen eingeben, keine Buchstaben!"
        GOTO ROUTEBQ1
      ELSE 
        l% = VAL(tmp$)
      END IF
      ROUTEBQ2:
      LOCATE 12, 30
      PRINT "Wie lang sind die Pausen in Sekunden?"
      LOCATE 13, 30
      INPUT "", tmp$
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      IF tmp$ = "" THEN 
        LOCATE 3, 30
        PRINT "Du musst einen Zahl angeben!"
        GOTO ROUTEBQ2
      ELSEIF ISNUMERIC%(tmp$) = 0 THEN
        LOCATE 3, 30
        PRINT "Du sollst Zahlen eingeben, keine Buchstaben!"
        GOTO ROUTEBQ2
      ELSE 
        e! = VAL(tmp$)
      END IF
      FOR i% = 1 TO l%
        ii% = 8
        DO
          CALL DRAWLED (1, ii%)
          OUT 888, 2 ^ (ii% - 1)
          CALL MSSLEEP (e!)
          CALL DRAWLED (0, ii%)
          ii% = ii% - 1
        LOOP UNTIL ii% = 0        
      NEXT i%
      OUT 888, 0
    CASE CHR$(99): 
      ROUTEC:
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      ROUTECQ1:
      LOCATE 12, 30
      PRINT "Wie viele zufaellige LED sollen blinken?"
      LOCATE 13, 30
      INPUT "", tmp$
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      IF tmp$ = "" THEN 
        LOCATE 3, 30
        PRINT "Du musst einen Zahl angeben!"
        GOTO ROUTECQ1
      ELSEIF ISNUMERIC%(tmp$) = 0 THEN
        LOCATE 3, 30
        PRINT "Du sollst Zahlen eingeben, keine Buchstaben!"
        GOTO ROUTECQ1
      ELSE 
        l% = VAL(tmp$)
      END IF
      ROUTECQ2:
      LOCATE 12, 30
      PRINT "Wie lang sind die Pausen in Sekunden?"
      LOCATE 13, 30
      INPUT "", tmp$
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      IF tmp$ = "" THEN 
        LOCATE 3, 30
        PRINT "Du musst einen Zahl angeben!"
        GOTO ROUTECQ2
      ELSEIF ISNUMERIC%(tmp$) = 0 THEN
        LOCATE 3, 30
        PRINT "Du sollst Zahlen eingeben, keine Buchstaben!"
        GOTO ROUTECQ2
      ELSE 
        e! = VAL(tmp$)
      END IF
      FOR i% = 1 TO l%
        RANDOMIZE TIMER
        ii% = INT(RND * 8) + 1
        CALL DRAWLED (1, ii%)
        OUT 888, 2 ^ (ii% - 1)
        CALL MSSLEEP (e!)
        CALL DRAWLED (0, ii%)      
      NEXT i%
      OUT 888, 0  
    CASE CHR$(100):
      ROUTED:
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      ROUTEDQ1:
      LOCATE 12, 30
      PRINT "Gib hier die Nummern der zu leuchtenden LED an."
      LOCATE 13, 30
      PRINT "Erweiterter Syntax:"
      LOCATE 14, 30
      PRINT "<leds>,<pause>,<leds>,<pause>,<leds>..."
      LOCATE 15, 30
      LINE INPUT "", leds$
      DIM ledgt%(7)
      IF INSTR(leds$, ",") THEN
        inputtype$ = "led"
        FOR i% = 0 TO 7
          ledgt%(i%) = 0
        NEXT i% 
        sleep$ = "0"
        bits% = 0
        FOR i% = 1 TO LEN(leds$)
          IF MID$(leds$, i%, 1) = "," THEN
            IF inputtype$ = "led" THEN
              OUT 888, bits%
              CALL IMAGE (ledgt%(0), ledgt%(1), ledgt%(2), ledgt%(3), ledgt%(4), ledgt%(5), ledgt%(6), ledgt%(7))
              inputtype$ = "sleep"    
              FOR ti% = 1 TO 7
                ledgt%(ti%) = 0
              NEXT ti% 
              bits% = 0
              sleep$ = "0"        
            ELSE
              CALL MSSLEEP (VAL(sleep$))
              OUT 888, 0
              CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
              inputtype$ = "led"
            END IF    
          ELSE
            IF inputtype$ = "led" THEN
              ledgt%(VAL(MID$(leds$, i%, 1)) - 1) = 1
              bits% = bits% + (2 ^(VAL(MID$(leds$, i%, 1)) - 1))
            ELSE
              sleep$ = sleep$ + MID$(leds$, i%, 1)
            END IF        
          END IF
        NEXT i%
        OUT 888, bits%
        CALL IMAGE (ledgt%(0), ledgt%(1), ledgt%(2), ledgt%(3), ledgt%(4), ledgt%(5), ledgt%(6), ledgt%(7))
        LOCATE 3, 30
        IF bits% = 1 OR bits% = 2 OR bits% = 4 OR bits% = 8 OR bits% = 16 OR bits% = 32 OR bits% = 64 OR bits% = 128 THEN
          PRINT "Beliebige Taste druecken, um LED auszuschalten!"
        ELSE
          PRINT "Beliebige Taste druecken, um LEDs auszuschalten!"
        END IF
        SLEEP
        OUT 888, 0
        CALL HEADLINE
        CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      ELSE 
        FOR i% = 0 TO 7
          ledgt%(i%) = 0
        NEXT i% 
        bits% = 0
        FOR i% = 1 TO LEN(leds$)
          ledgt%(VAL(MID$(leds$, i%, 1)) - 1) = 1
          bits% = bits% + (2 ^(VAL(MID$(leds$, i%, 1)) - 1))
        NEXT i%
        OUT 888, bits%
        CALL IMAGE (ledgt%(0), ledgt%(1), ledgt%(2), ledgt%(3), ledgt%(4), ledgt%(5), ledgt%(6), ledgt%(7))
        LOCATE 3, 30
        IF LEN(leds$) = 1 THEN
          PRINT "Beliebige Taste druecken, um LED auszuschalten!"
        ELSE
          PRINT "Beliebige Taste druecken, um LEDs auszuschalten!"
        END IF
        SLEEP
        OUT 888, 0
        CALL HEADLINE
        CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      END IF
    CASE CHR$(101):
      ROUTEE:
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      ROUTEEQ1:
      LOCATE 12, 30
      PRINT "Definiere die Eingabe: a) Morsecode b) Text"
      LOCATE 13, 30
      LINE INPUT "", inputtype$
      CALL HEADLINE
      CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
      IF inputtype$ <> "a" AND inputtype$ <> "b" THEN
        LOCATE 3, 30
        PRINT "Waehle zwischen a oder b!"
        GOTO ROUTEEQ1
      END IF
      IF inputtype$ = "a" THEN
        ROUTEEAQ1:
        LOCATE 12, 30
        PRINT "Gib den Morsecode ein!"
        LOCATE 13, 30
        LINE INPUT "", moresecode$
        CALL HEADLINE
        CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
        ROUTEEAQ2:
        LOCATE 12, 30
        PRINT "Soll auch Ton abgespielt werden? a) Ja b) Nein"
        LOCATE 13, 30
        LINE INPUT "", playsound$
        CALL HEADLINE
        CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
        IF playsound$ <> "a" AND playsound$ <> "b" THEN
          LOCATE 3, 30
          PRINT "Waehle zwischen a oder b!"
          GOTO ROUTEEAQ2
        END IF
        IF playsound$ = "a" THEN
          CALL DOMORSE (moresecode$, 1)
        ELSEIF playsound$ = "b" THEN
          CALL DOMORSE (moresecode$, 0)
        END IF
       ELSEIF inputtype$ = "b" THEN
        DIM morsecode$(122)
        morsecode$(97) = ".-"
        morsecode$(98) = "-..."
        morsecode$(99) = "-.-."
        morsecode$(100) = "-.."
        morsecode$(101) = "."
        morsecode$(102) = "..-."
        morsecode$(103) = "--."
        morsecode$(104) = "...."
        morsecode$(105) = ".."
        morsecode$(106) = ".---"
        morsecode$(107) = "-.-"
        morsecode$(108) = ".-.."
        morsecode$(109) = "--"
        morsecode$(110) = "-."
        morsecode$(111) = "---"
        morsecode$(112) = ".--."
        morsecode$(113) = "--.-"
        morsecode$(114) = ".-."
        morsecode$(115) = "..."
        morsecode$(116) = "-"
        morsecode$(117) = "..-"
        morsecode$(118) = "...-"
        morsecode$(119) = ".--"
        morsecode$(120) = "-..-"
        morsecode$(121) = "-.--"
        morsecode$(122) = "--.."
        morsecode$(48) = "-----"
        morsecode$(49) = ".----"
        morsecode$(50) = "..---"
        morsecode$(51) = "...--"
        morsecode$(52) = "....-"
        morsecode$(53) = "....."
        morsecode$(54) = "-...."
        morsecode$(55) = "--..."
        morsecode$(56) = "---.."
        morsecode$(57) = "----."
        ROUTEEBQ1:
        LOCATE 12, 30
        PRINT "Gib den Text ein, der gemorst werden soll!"
        LOCATE 13, 30
        LINE INPUT "", moresetext$
        CALL HEADLINE
        CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
        IF moresetext$ = "" THEN
          LOCATE 3, 30
          PRINT "Du musst einen Morsetext angeben!"
          GOTO ROUTEEBQ1
        END IF
        ROUTEEBQ2:
        LOCATE 12, 30
        PRINT "Soll auch Ton abgespielt werden? a) Ja b) Nein"
        LOCATE 13, 30
        LINE INPUT "", playsound$
        CALL HEADLINE
        CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
        IF playsound$ <> "a" AND playsound$ <> "b" THEN
          LOCATE 3, 30
          PRINT "Waehle zwischen a oder b!"
          GOTO ROUTEEBQ2
        END IF
        mcode$ = ""
        FOR i% = 1 TO LEN(moresetext$)
          mcode$ = mcode$ + " " + morsecode$(ASC(MID$(LCASE$(moresetext$), i%, 1)))
        NEXT i%
        IF playsound$ = "a" THEN
          CALL DOMORSE (mcode$, 1)
        ELSEIF playsound$ = "b" THEN
          CALL DOMORSE (mcode$, 0)
        END IF
      ELSE
        LOCATE 3, 30
        PRINT "Fehlerhafte Auswahl!"
        GOTO ROUTEEQ1
      END IF
  END SELECT 
LOOP UNTIL INKEY$ = CHR$(27)
END
SUB HEADLINE ()
  COLOR 15, 1
  CLS
  LINE (0, 15) - (641, 15), 15
  LOCATE 1, 2
  COLOR 15
  PRINT "Programm von Thomas Kekeisen - 10e - Escape zum Beenden"
END SUB
SUB IMAGE (led1%, led2%, led3%, led4%, led5%, led6%, led7%, led8%)
  LINE (200, 15) - (200, 350), 15
  CALL DRAWLED (led1%, 1)
  CALL DRAWLED (led2%, 2)
  CALL DRAWLED (led3%, 3)
  CALL DRAWLED (led4%, 4)
  CALL DRAWLED (led5%, 5)
  CALL DRAWLED (led6%, 6)
  CALL DRAWLED (led7%, 7)
  CALL DRAWLED (led8%, 8)
  LINE (200, 55) - (640, 55), 15
  LOCATE 6, 30
  PRINT "Routinen"
  LOCATE 7, 30
  PRINT "a) Von 1 bis 8"
  LOCATE 8, 30
  PRINT "b) Von 8 bis 1"
  LOCATE 9, 30
  PRINT "c) Zufaellig"
  LOCATE 10, 30
  PRINT "d) Bestimmte"
  LOCATE 7, 50
  PRINT "e) Morsecode"
END SUB
SUB DRAWLED (state%, number%)
  w% = 50
  h% = 20
  x% = 130
  y% = 11 + (number% * 28)
  IF state% = 1 THEN
    bgcolor% = 10
  ELSE
    bgcolor% = 12
  END IF
  LINE (x%, y%) - (x% + w%, y%), bgcolor%
  LINE (x%, y% + h%) - (x% + w%, y% + h%), bgcolor%
  LINE (x%, y%) - (x%, y% + h%), bgcolor%
  LINE (x% + w%, y%) - (x% + w%, y% + h%), bgcolor%
  PAINT (x% + (w% / 2), y% + (h% / 2)), bgcolor%, bgcolor%
  LOCATE number% * 2 + 2, 2
  PRINT "LED "
  COLOR bgcolor%
  LOCATE number% * 2 + 2, 7
  PRINT number%
  COLOR 15
END SUB
SUB SINGLELED (number%)
  CALL DRAWLED (1, number%)
  OUT 888, 2 ^ (number% - 1)
  LOCATE 3, 30
  PRINT "Beliebige Taste druecken, um LED auszuschalten!"
  SLEEP
  OUT 888, 0
  CALL HEADLINE
  CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
END SUB
SUB DOMORSE (code$, playsound%)
 FOR i% = 1 TO LEN(code$)
   IF MID$(code$, i%, 1) = "-" THEN
     OUT 888, 255
     CALL IMAGE (1, 1, 1, 1, 1, 1, 1, 1)
     IF playsound% = 1 THEN
       SOUND 300, 9.1
     END IF
     CALL MSSLEEP (0.5)
     OUT 888, 0
     CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
   ELSEIF MID$(code$, i%, 1) = "." THEN
     OUT 888, 255
     CALL IMAGE (1, 1, 1, 1, 1, 1, 1, 1)
     IF playsound% = 1 THEN
       SOUND 300, 3.64
     END IF
     CALL MSSLEEP (0.2)
     OUT 888, 0
     CALL IMAGE (0, 0, 0, 0, 0, 0, 0, 0)
   ELSE 
     CALL MSSLEEP (0.5)
   END IF
   CALL MSSLEEP (0.5)
 NEXT i%
END SUB
SUB MSSLEEP (sleeptime!)
  s! = TIMER
  DO
    'Wait
  LOOP UNTIL TIMER > s! + sleeptime!
END SUB
FUNCTION ISNUMERIC% (text$)
  ISNUMERIC% = 1
  FOR i% = 1 TO LEN(text$)
    IF MID$(text$, i%, 1) <> "0" AND MID$(text$, i%, 1) <> "1" AND MID$(text$, i%, 1) <> "2" AND MID$(text$, i%, 1) <> "3" AND MID$(text$, i%, 1) <> "4" AND MID$(text$, i%, 1) <> "5" AND MID$(text$, i%, 1) <> "6" AND MID$(text$, i%, 1) <> "7" AND MID$(text$, i%, 1) <> "8" AND MID$(text$, i%, 1) <> "9" AND MID$(text$, i%, 1) <> "." THEN
      ISNUMERIC% = 0
    END IF
  NEXT i%            
END FUNCTION 
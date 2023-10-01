program EnhancedBubble;

CONST
         MaxSize = 100;

TYPE
        DataType = Integer;
        ArrayType = Array[1..MaxSize] OF DataType;

VAR
        I : Integer;
        List : ArrayType;

(****************************************)

PROCEDURE Exchange (VAR First, Second : DataType);

VAR
        Aux : DataType;

BEGIN
        Aux := First;
        First := Second;
        Second := Aux

END;

(****************************************)

PROCEDURE BubbleSort (VAR List : ArrayType; N : Integer);

VAR
        Pass, I : Integer;
        NoExchange : Boolean;

BEGIN
        Pass := 1;

        REPEAT
          NoExchange := TRUE;
          FOR I := 1 TO N - Pass DO
            IF List[I] > List[I+1]
              THEN BEGIN
                         Exchange(List[I], List[I+1]);
                         NoExchange := FALSE
              END;
          Pass := Pass + 1
        UNTIL NoExchange = TRUE
END;

(****************************************)

BEGIN (*Test*)

        FOR I := 1 TO 15 DO
          List[I] := RANDOM(100);
        BubbleSort(List, 15);
        FOR I := 1 TO 15 DO
          Writeln(List[i])

END. (*Test*)

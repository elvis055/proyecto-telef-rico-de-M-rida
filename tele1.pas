(*
   ya casi
*)

program telefericoM4;

uses crt;
	var
	nombre,apellido,tipo_b,cedula,origen,destino,conf,precio_u,regreso,regreso_b: string;
	opcion: char;
	estacion,i,cantidad_b,tramo,edad: integer;
	contiene_letras:boolean;
        precio_b:real;
begin
	writeln('------------------------------------');
	writeln('            BIENVENIDO              ');
	writeln('                AL                  ');
	writeln('            TELEFERICO              ');
	writeln('               DEL                  ');
	writeln('              MISTER                ');
	writeln('------------------------------------');

writeln('');
writeln('MENU');
writeln('');
writeln('1. COMPRAR BOLETOS');
writeln('2. VER SISTEMA');
writeln('3. SALIR');
readln(opcion);

	case opcion of
	'1': begin
  	        writeln('USTED HA ESCOGIDO "COMPRAR BOLETOS", POR FAVOR INGRESE SUS DATOS PARA LA COMPRA:');
                writeln('');
	        write('INGRESE SU NOMBRE: ');
	                readln(nombre);
                write('INGRESE SU APELLIDO: ');
		        readln(apellido);
                write('INGRESE SU EDAD: ');
                        readln(edad);


  repeat
    write('INGRESE SU CEDULA: ');
    readln(cedula);

    contiene_Letras := False;

    for i := 1 to length(cedula) do
    begin
      if (cedula[i] in ['a'..'z', 'A'..'Z']) then
      begin
        contiene_Letras := True;
        break;
      end;
    end;

    if contiene_Letras then
      writeln('La cedula no puede contener letras. Por favor, ingrese nuevamente.');
      writeln('');
  until not contiene_Letras;

  writeln('DATOS INGRESADOS CORRECTAMENTE.');
  writeln('');
   writeln('INGRESAR SU ESTACION: ');
  repeat
  writeln('');
  writeln('1. BARINITAS');
  writeln('2. LA MONTANA');
  writeln('3. LA AGUADA');
  writeln('4. LOMA REDONDA');
  writeln('5. PICO ESPEJO');
  writeln('');
  readln(estacion);


  case estacion of

  1:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. BARINITAS - LA MONTANA');
       writeln('2. BARINITAS - LA AGUADA');
       writeln('3. BARINITAS - LOMA REDONDA');
       writeln('4. BARINITAS - PICO ESPEJO');
       writeln('');
       readln(tramo);
       writeln('');
       origen:='BARINITAS';

              CASE tramo of

        1:begin
            destino:='LA MONTANA';
            end;

        2:begin
            destino:='LA AGUADA';
            end;

        3:begin
            destIno:='LOMA REDONDA';
            end;

        4:begin
            destino:='PICO ESPEJO';
            end;

          end;
       end;

  2:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. LA MONTANA - BARINITAS');
       writeln('2. LA MONTANA - LA AGUADA');
       writeln('3. LA MONTANA - LOMA REDONDA');
       writeln('4. LA MONTANA - PICO ESPEJO');
       writeln('');
       readln(tramo);
       writeln('');
       origen:='LA MONTANA';

         CASE tramo of

        1:begin
            destino:='BARINITAS';
            end;

        2:begin
            destino:='LA AGUADA';
            end;

        3:begin
            destIno:='LOMA REDONDA';
            end;

        4:begin
            destino:='PICO ESPEJO';
            end;
      end;
  end;

  3:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. LA AGUADA - LA MONTANA');
       writeln('2. LA AGUADA - BARINITA');
       writeln('3. LA AGUADA - LOMA REDONDA');
       writeln('4. LA AGUADA - PICO ESPEJO');
       writeln('');
       readln(tramo);
       writeln('');
       origen:='LA AGUADA';

       CASE tramo of

        1:begin
            destino:='LA MONTANA';
            end;

        2:begin
            destino:='BARINITA';
            end;

        3:begin
            destIno:='LOMA REDONDA';
            end;

        4:begin
            destino:='PICO ESPEJO';
            end;
          end;
       end;

   4:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. LOMA REDONDA - LA MONTANA');
       writeln('2. LOMA REDONDA - LA AGUADA');
       writeln('3. LOMA REDONDA - BARINITAS');
       writeln('4. LOMA REDONDA - PICO ESPEJO');
       writeln('');
       readln(tramo);
       writeln('');
       origen:='LOMA REDONDA';

       CASE tramo of

        1:begin
            destino:='LA MONTANA';
            end;

        2:begin
            destino:='LA AGUADA';
            end;

        3:begin
            destIno:='BARINITAS';
            end;

        4:begin
            destino:='PICO ESPEJO';
            end;
        end;

     end;

   5:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. PICO ESPEJO - LA MONTANA');
       writeln('2. PICO ESPEJO - LA AGUADA');
       writeln('3. PICO ESPEJO - LOMA REDONDA');
       writeln('4. PICO ESPEJO - BARINITAS');
       writeln('');
       readln(tramo);
       origen:='PICO ESPEJO';

     CASE tramo of

        1:begin
            destino:='LA MONTANA';
            end;

        2:begin
            destino:='LA AGUADA';
            end;

        3:begin
            destIno:='LOMA REDONDA';
            end;

        4:begin
            destino:='BARINITAS';
            end;
        end;
       end;
     end;


  writeln('');
  writeln('Origen: ',origen);
  writeln('Destino: ',destino);
  writeln('');
  writeln('DESEA CAMBIAR SU ESTACION/TRAMO?');
  write('Y o N: ');
  readln(conf);
  until conf='N';

  begin
    writeln('');
    writeln('DESEA COMPRAR UN BOLETO DE REGRESO?');
    write('Y o N: ');
    readln(regreso);
    writeln('');
    WRITELN('');

  write('CANTIDAD DE BOLETOS: ');
  readln(cantidad_b);

                if regreso='Y' then
                  begin
                  writeln('');
                  writeln('RUTA DE REGRESO: ');
                  writeln('');
                  writeln('ORIGEN: ',destino);
                   writeln('DESTINO: ',origen);
                    if edad < 3 then
                       begin
                       precio_b:=0;
                       precio_u:='$0';
                       tipo_b:='EXONERADO';
                       end

                    else if (edad<=12) OR (edad>=60) then
                         begin
                         precio_b:=cantidad_b*12*2;
                         precio_u:='$12';
                         tipo_b:='TERCERA EDAD/MENORES DE EDAD';
                         end

                    else if  (edad>=13) or (edad<=59) then
                         BEGIN
                         precio_b:=cantidad_b*20*2;
                         precio_u:='$20';
                         tipo_b:='GENERAL';
                         end;
                          end;
                           end;
                            end;

    end;



  WRITELN('');WRITELN('');WRITELN('');WRITELN('');WRITELN('');WRITELN('');

  IF regreso<>'Y' then
     begin
      if edad < 3 then
         begin
         precio_b:=0;
         precio_u:='$0';
         tipo_b:='EXONERADO';
         end

      else if (edad<=12) OR (edad>=60) then
           begin
           precio_b:=cantidad_b*(12);
           precio_u:='$12';
           tipo_b:='TERCERA EDAD/MENORES DE EDAD';
           end

      else if  (edad>=13) or (edad<=59) then
           BEGIN
           precio_b:=cantidad_b*(20);
           precio_u:='$20';
           tipo_b:='GENERAL';
           end;

            if regreso='Y' then
              begin
              regreso_b:='Si'
              end
            else if regreso<>'Y' then
              begin
              regreso_b:='No';
              end;
           end;

         if regreso<>'Y' then
           begin
         writeln('------------------------------------');
         writeln('              FACTURA               ');
         writeln('------------------------------------');
         writeln('NOMBRE: ',nombre);
         writeln('APELLIDO: ',apellido);
         writeln('CEDULA: ',cedula);
         writeln('------------------------------------');
         writeln('ESTACION/ORIGEN:       ',origen);
         writeln('TRAMO/DESTINO:         ',destino);
         writeln('------------------------------------');
         writeln('TIPO DE BOLETO:        ',tipo_b);
         writeln('CANTIDAD DE BOLETOS:   ',cantidad_b);
         writeln('------------------------------------');
         writeln('PRECIO UNITARIO:       ',precio_u);
         writeln('PRECIO TOTAL:          ',precio_b:4:2);
         writeln('------------------------------------');
         writeln('       GRACIAS POR SU COMPRA        ');
         writeln('------------------------------------');
           end

         else if regreso='Y' then
           begin
         writeln('------------------------------------');
         writeln('              FACTURA               ');
         writeln('------------------------------------');
         writeln('NOMBRE: ',nombre);
         writeln('APELLIDO: ',apellido);
         writeln('CEDULA: ',cedula);
         writeln('------------------------------------');
         writeln('ESTACION/ORIGEN:       ',origen);
         writeln('TRAMO/DESTINO:         ',destino);
         writeln('------------------------------------');
         writeln('RUTA DE REGRESO:       ');
         write('ORIGEN:',destino);writeln(' /DESTINO:',origen);
         writeln('------------------------------------');
         writeln('TIPO DE BOLETO:        ',tipo_b);
         writeln('CANTIDAD DE BOLETOS:   ',cantidad_b);
         writeln('------------------------------------');
         writeln('PRECIO UNITARIO:       ',precio_u);
         writeln('PRECIO TOTAL:          ',precio_b:4:2);
         writeln('------------------------------------');
         writeln('       GRACIAS POR SU COMPRA        ');
         writeln('------------------------------------');
           end;

        readln();
        end.

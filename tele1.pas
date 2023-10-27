   (*
   mano nose como este esta monda, lo unico que no se es para que borre lo escrito en consola
   me preocupa D:
*)

program telefericoM2;
     uses crt;
        var
          nombre,apellido,tramo,cantidad,tipo_b:integer;
          cedula:integer;
          estacion:integer;
begin
  writeln('_____________________');
  writeln('     TELEFERICO      ');
  writeln('        DEL         ');
  writeln('       MISTER        ');
  writeln('_____________________');
  writeln('');
  writeln('PORFAVOR');
  writeln('');
  write('INGRESAR SUS DATOS PERSONALES: ');
  writeln('  ');
  write('NOMBRE: ');
  readln(nombre);

  if nombre<>1 then
     begin
     repeat
       writeln(' ');
       writeln('EL NOMBRE QUE INGRESO, NO APLICA');

       writeln('PORFAVOR INTENTALO OTRA VEZ');
       writeln('');
       read(nombre);
       until nombre = 1;
     end;

  writeln(' ');
  write('APELLIDO :');
  readln(apellido);

  if apellido<>1 then
     begin
     repeat
       writeln(' ');
       writeln('EL APELLIDO QUE INGRESO, NO APLICA');

       writeln('PORFAVOR INTENTALO OTRA VEZ');
       writeln('');
       read(apellido);
       until apellido = 1;
     end;

  writeln(' ');
  write('CEDULA :');
  readln(cedula);

  if cedula<>1 then
     begin
     repeat
       writeln(' ');
       writeln('EL APELLIDO QUE INGRESO, NO APLICA');

       writeln('PORFAVOR INTENTALO OTRA VEZ');
       writeln('');
       readln(cedula);
       until cedula = 1;
     end;

  writeln('');
  writeln('INGRESAR SU ESTACION: ');
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
       readln(tramo);
   end;
   2:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. LA MONTANA - BARINITA');
       writeln('2. LA MONTANA - LA AGUADA');
       writeln('3. LA MONTANA - LOMA REDONDA');
       writeln('4. LA MONTANA - PICO ESPEJO');
       readln(tramo);
   end;
   3:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. LA AGUADA - LA MONTANA');
       writeln('2. LA AGUADA - BARINITA');
       writeln('3. LA AGUADA - LOMA REDONDA');
       writeln('4. LA AGUADA - PICO ESPEJO');
       readln(tramo);
   end;
   4:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. LOMA REDONDA - LA MONTANA');
       writeln('2. LOMA REDONDA - LA AGUADA');
       writeln('3. LOMA REDONDA - BARINITAS');
       writeln('4. LOMA REDONDA - PICO ESPEJO');
       readln(tramo);
   end;
   5:begin
       writeln('');
       writeln('ELIGA SU TRAMO: ');
       writeln('1. PICO ESPEJO - LA MONTANA');
       writeln('2. PICO ESPEJO - LA AGUADA');
       writeln('3. PICO ESPEJO - LOMA REDONDA');
       writeln('4. PICO ESPEJO - BARINITAS');
       readln(tramo);
   end;



  end;












  READLN();







  end.

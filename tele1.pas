(*
   ahi vamos
*)

program telefericomister;
    
uses crt;
	var
	nombre,apellido: string;
	opcion: char;
	estacion: integer;
	cedula: string;
	i: integer;
	contiene_letras:boolean;
	tramo:integer;
	
begin
	writeln('_____________________');
	writeln('     BIENVENIDO      ');
	writeln('        AL           ');
	writeln('     TELEFERICO      ');
	writeln('        DEL          ');
	writeln('       MISTER        ');
	writeln('_____________________');
writeln('');
writeln('que desea hacer?');
writeln('1. comprar boleto');
writeln('2. ver el sistema');
writeln ('3. salir');
readln(opcion);
	case opcion of 
	'1': begin
	writeln('usted ha escogido comprar boleto, por favor ingrese sus datos para la compra');
	writeln('ingrese su nombre');
		readln(nombre);
	writeln('ingrese su apellido');
		readln(apellido);
	begin
  repeat
    writeln('Ingrese su cedula:');
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
      
  until not contiene_Letras;

  writeln('Cedula ingresada correctamente.');
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
end;



	

































































end;
end;
end.

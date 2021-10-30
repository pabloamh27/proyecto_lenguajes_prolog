% ----------------------------------------------------------------------
%                                                   TAREA PROGRAMADA III
% ----------------------------------------------------------------------
% JONATHAN QUESADA SALAS      - 2020023583
% PABLO ALBERTO MU�OZ HIDALGO - 2020031899
% ----------------------------------------------------------------------

% ----------------------------------------------------------------------
%        EL MEN� INICIAL PARA INGRESAR EL NOMBRE DEL PACIENTE PARA LUEGO
% ESTABLECER EL PACIENTE JUNTO CON LA ENFERMEDAD QUE SE HAYA ESTABLECIDO
% ----------------------------------------------------------------------
go :-
    write('El nombre del paciente es: '),
    read(Paciente),
    posible_enfermedad_padecible(Paciente,Padecimiento),
    arreglo_escribir_lista(['El diagnostico seria que tienes ',Padecimiento,'.']).

go :-
    % -------------------------------------------------------------------------------------------
    % SI NO SE ENCUENTRA ALGUNA ENFERMEDAD O PADECIMIENTO ASOCIADO SE RETORNA EL SIGUIETE MENSAJE
    % -------------------------------------------------------------------------------------------
    write('No se pudo diagnosticar correctamente los sintomas').

% -----------------------------------------------------------------------
% LA FUNCI�N RECURSIVA QUE SE ESTABLECE EN LA ESPECIFICACI�N
% -----------------------------------------------------------------------
% ARREGLO_ESCRIBIR_LISTA: LA FUNCIONALIDAD DE ESTA FUNCIONALIDAD ES
% PODER ESCRIBIR CARACTER POR CARACTER UNA HILERA COMPLETA CON
% CARACTERES EXTRAYENDO LA CABEZA Y RECORRER LA COLA PARA LUEGO EXTRAER
% LA CABEZA DE ESA MISMA COLA
% -----------------------------------------------------------------------
arreglo_escribir_lista([]).
arreglo_escribir_lista([Cabeza| Cola]) :-
    write(Cabeza),
    arreglo_escribir_lista(Cola).

% ----------------------------------------------------------------------
%                           SE ALMACENA LA RESPUESTA DADA POR EL USUARIO
% ----------------------------------------------------------------------
respuesta(Opcion) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Opcion, Code).


% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE ARDOR AL ORINAR
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,ardor_orinar) :-
    arreglo_escribir_lista(['�',Paciente,' tiene dolor o ardor al orinar? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE ARDOR AL ORINAR
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,ardor_orinar) :-
    arreglo_escribir_lista(['�',Paciente,' tiene dolor o ardor al orinar? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE FIEBRE
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,fiebre) :-
    arreglo_escribir_lista(['�',Paciente,' tiene fiebre? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE DOLOR EN EL COITO
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,dolor_coito) :-
    arreglo_escribir_lista(['�',Paciente,' tiene dolor en el coito? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE LLAGAS EN LOS GENITALES
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,llagas_genitales) :-
    arreglo_escribir_lista(['�',Paciente,' tiene llagas en los genitales? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE TOS
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,tos) :-
    arreglo_escribir_lista(['�',Paciente,' tiene voz seca? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE CANSANCIO
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,cansancio) :-
    arreglo_escribir_lista(['�',Paciente,' tiene cansancio mas de lo usual? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE PERDIDA DE GUSTO Y OLFATO
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,perdida_gusto_olfato) :-
    arreglo_escribir_lista(['�',Paciente,' tiene perdida de olfato y gusto? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE DIARREA
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,diarrea) :-
    arreglo_escribir_lista(['�',Paciente,' ultimamente tiene diarrea? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE DOLOR ABDOMINAL
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,dolor_abdominal) :-
    arreglo_escribir_lista(['�',Paciente,' tienes dolor abdominal? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE EL SENTIMIENTO DE PESADEZ
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,pesadez) :-
    arreglo_escribir_lista(['�',Paciente,' tiene una sensacion de pesadez? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE ACIDEZ
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,acidez) :-
    arreglo_escribir_lista(['�',Paciente,' sientes una sensacion de acides persistente? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE NAUSEAS
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,nauseas) :-
    arreglo_escribir_lista(['�',Paciente,' tiene nauseas? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE ESTRES
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,estres) :-
    arreglo_escribir_lista(['�',Paciente,' has pasado por una situacion de mucho estres recientemente? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE VOMITO
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,vomito) :-
    arreglo_escribir_lista(['�',Paciente,' vomita frecuentemente? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE UN DOLOR EN EL O�DO
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,dolor_oido) :-
    arreglo_escribir_lista(['�',Paciente,' tiene un dolor agudo en el oido? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE UN SANGRADO NASAL
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,sangrado_nasal) :-
    arreglo_escribir_lista(['�',Paciente,' tiene sangrado nasal? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE UN CAMBIO DE VISI�N
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,cambio_vision) :-
    arreglo_escribir_lista(['�',Paciente,' tiene cambios en la vision? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE TIENE UNA HEMORRAGIA
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,hemorragia) :-
    arreglo_escribir_lista(['�',Paciente,' recientemete has tenido alguna hemorragia? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% VALIDACI�N PARA SABER SI EL PACIENTE COME O NO
% ----------------------------------------------------------------------
sintoma_enfermedad_pregunta(Paciente,no_comer) :-
    arreglo_escribir_lista(['�',Paciente,' te cuesta comer? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% ----------------------------------------------------------------------
% REQUISITOS PARA UNA INFECCI�N DE TRANSMISI�N SEXUAL
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'una infeccion de transmision sexual') :-
    sintoma_enfermedad_pregunta(Paciente,ardor_orinar),
    sintoma_enfermedad_pregunta(Paciente,fiebre),
    sintoma_enfermedad_pregunta(Paciente,dolor_coito),
    sintoma_enfermedad_pregunta(Paciente,llagas_genitales).

% ----------------------------------------------------------------------
% REQUISITOS PARA EL COVID-19
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'COVID-19, deberias hacerte la prueba') :-
    sintoma_enfermedad_pregunta(Paciente,fever),
    sintoma_enfermedad_pregunta(Paciente,tos),
    sintoma_enfermedad_pregunta(Paciente,cansancio),
    sintoma_enfermedad_pregunta(Paciente,perdida_gusto_olfato),
    sintoma_enfermedad_pregunta(Paciente,diarrea).

% ----------------------------------------------------------------------
% REQUISITOS PARA UNA GESTRITIS NERVIOSA
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'probablemente una gastritis nerviosa') :-
    sintoma_enfermedad_pregunta(Paciente,nauseas),
    sintoma_enfermedad_pregunta(Paciente,acidez),
    sintoma_enfermedad_pregunta(Paciente,pesadez),
    sintoma_enfermedad_pregunta(Paciente,dolor_abdominal),
    sintoma_enfermedad_pregunta(Paciente,estres).

% ----------------------------------------------------------------------
% REQUISITOS PARA UNA GASTRITIS
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'gastritis') :-
    sintoma_enfermedad_pregunta(Paciente, nauseas),
    sintoma_enfermedad_pregunta(Paciente, acidez),
    sintoma_enfermedad_pregunta(Paciente, pesadez),
    sintoma_enfermedad_pregunta(Paciente, dolor_abdominal).

% ----------------------------------------------------------------------
% REQUISITOS PARA UNA GASTROENTENRITIS VIRAL
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'una gastroentenritis viral') :-
    sintoma_enfermedad_pregunta(Paciente,vomito),
    sintoma_enfermedad_pregunta(Paciente,diarrea),
    sintoma_enfermedad_pregunta(Paciente,nauseas).

% ----------------------------------------------------------------------
% REQUISITOS PARA UNA INFECCI�N EN EL O�DO
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'una infeccion en el oido') :-
    sintoma_enfermedad_pregunta(Paciente,dolor_oido),
    sintoma_enfermedad_pregunta(Paciente,fiebre).

% ----------------------------------------------------------------------
% REQUISITOS
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'hipertension') :-
    sintoma_enfermedad_pregunta(Paciente,sangrado_nasal),
    sintoma_enfermedad_pregunta(Paciente,cambio_vision),
    sintoma_enfermedad_pregunta(Paciente,vomito),
    sintoma_enfermedad_pregunta(Paciente,fiebre).

% ----------------------------------------------------------------------
% REQUISITOS PARA EL C�NCER
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'sintomas asociados al cancer, hazte examenes') :-
    sintoma_enfermedad_pregunta(Paciente,cansancio),
    sintoma_enfermedad_pregunta(Paciente,tos),
    sintoma_enfermedad_pregunta(Paciente,fiebre),
    sintoma_enfermedad_pregunta(Paciente,hemorragia),
    sintoma_enfermedad_pregunta(Paciente,sudor),
    sintoma_enfermedad_pregunta(Paciente,no_comer).

% ----------------------------------------------------------------------
% REQUISITOS PARA UNA FRACTURA INTERNA
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'una fractura interna, mejor hazte una radiografia') :-
    sintoma_enfermedad_pregunta(Paciente,pesadez),
    sintoma_enfermedad_pregunta(Paciente,sangrado_nasal),
    sintoma_enfermedad_pregunta(Paciente,nauseas).

% ----------------------------------------------------------------------
% REQUISITOS PARA UN ALG�N TIPO DE DEPRESI�N
% ----------------------------------------------------------------------
posible_enfermedad_padecible(Paciente,'algun tipo de depresion, ve con el psicologo') :-
    sintoma_enfermedad_pregunta(Paciente,no_comer),
    sintoma_enfermedad_pregunta(Paciente,cansancio),
    sintoma_enfermedad_pregunta(Paciente,pesadez).


use adr;
SELECT nombres as "Nombres",
apellidos as "Apellidos",
td.nombre as "Tipo de Documento",
nro_documento as "Documento",
calle as "Calle",
nro_calle as "Número de calle",
piso as "Piso",
depto as "Departamento",
ec.nombre as "Estado civil",
s.nombre as "Sexo",
fecha_nacimiento as "Fecha de nacimiento",
l.nombre as "Localidad",
telefono_contacto as "Teléfono de contacto",
email as "Correo electrónico",
CASE WHEN ingresar_planta = 0 THEN 'No' ELSE 'Si' END AS "¿Desea ingresar a planta?",
cant_contratos as "Cantidad de contratos",
cant_horas as "Cantidad de horas",
cant_cargos_aux as "Cantidad de cargos auxiliares",
CASE WHEN otra_contratacion = 0  THEN 'No' ELSE 'Si' END AS "¿Otra contratación?",
cual_contratacion as "Cual contratación",
antiguedad_contratos as "Antiguedad de contratos",
antiguedad_horas as "Antiguedad de horas",
antiguedad_cargos_docente as "Antiguedad de cargos docentes",
antiguedad_cargos_aux as "Antiguedad de cargos auxiliares"
FROM personas

JOIN sexos s on (s.id = sexo_id)
JOIN estado_civils ec on (ec.id = estado_civil_id)
JOIN tipo_documentos td on (td.id = tipo_documento_id)
JOIN localidads l on (l.id = localidad_id)
ORDER BY nro_documento DESC;
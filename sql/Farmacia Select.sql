SELECT ID, Fecha, Hora FROM Vale;
SELECT Nombre, Tipo, Descripcion, Costo, Cantidad, UMedida, Lote, FechaVencimiento FROM Medicamento;
SELECT CI, Nombre, PrimerApellido, SegundoApellido, Telefono, DirPart, Usuario, Contrasenna, Rol FROM Trabajador;
SELECT CI, Nombre, PrimerApellido, SegundoApellido FROM Suscripcion;
SELECT ID, Anno, Mes FROM Vuelta;
SELECT VueltaID, SuscripcionCI, TrabajadorUsuario FROM GestionAlmohadillas;
SELECT MedicamentoNombre, MedicamentoTipo, ValeID, TrabajadorUsuario, cantMedicamento FROM VentaMedicamentos;
SELECT Documentoid, datosReales FROM Reclamacion;
SELECT id, TrabajadorUsuario, fecha, datosFactura FROM Documento;
SELECT Documentoid, importe FROM InformeRecepcion;
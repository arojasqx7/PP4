Imports Microsoft.VisualBasic

Public Module ModuloDB
    Dim DB As New Data.OleDb.OleDbConnection
    Public Sub ConectarDB()
        DB.Close()
        DB.ConnectionString = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=PROGRA4_V2;Data Source=FOFO\FOFO"
        DB.Open()
    End Sub

    Public Sub DesconectarDB()
        DB.Close()
    End Sub

    Public Function CargarUserDB(ByVal Valor As String, ByVal Valor1 As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "select * from PERSONAS where  EMAIL = '" & Valor & "' and PASSWORD = '" & Valor1 & "'"

        LlenarDS(DS, SQL)

        Return DS
    End Function

    ' Funcion hecha por Fofo
    Public Function CargarRolDB(ByVal Valor As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "select * from DETALLE_ROL where  IDPERSONA = '" & Valor & "'"

        LlenarDS(DS, SQL)

        Return DS
    End Function

    Public Sub EjecutaSQL(ByVal SQL As String) ' recibe insert, update,delete
        ConectarDB()

        Dim Comando As New Data.OleDb.OleDbCommand(SQL, DB)
        Comando.ExecuteNonQuery()

        DesconectarDB()
    End Sub

    Public Sub LlenarDS(ByRef DS As Data.DataSet, ByVal SQL As String) ' recibe Select y lo devuelve en un Objeto DataSet
        ConectarDB()

        Dim Adaptador As New Data.OleDb.OleDbDataAdapter(SQL, DB)
        Adaptador.Fill(DS)

        DesconectarDB()
    End Sub

    Public Function DatoRepetidoDB(ByVal Tabla As String, ByVal CampoLlave As String, ByVal Valor As String) As Boolean
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "select * from " & Tabla & " where " & CampoLlave & " = '" & Valor & "'"

        LlenarDS(DS, SQL)

        If DS.Tables(0).Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function


    Public Function BuscarDB(ByVal Tabla As String, ByVal CampoLlave As String, ByVal Valor As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "select * from " & Tabla & " where " & CampoLlave & " = '" & Valor & "'"

        LlenarDS(DS, SQL)

        Return DS
    End Function

    Public Function Insertar_Empleado(ByVal Nombre As String, ByVal Apellido1 As String, ByVal Apellido2 As String, ByVal cedula As String, ByVal Fnacimiento As Date, ByVal Email As String, ByVal Password As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "INSERT INTO [dbo].[PERSONAS] ([NOMBRE] ,[APELLIDO1],[APELLIDO2],[CEDULA],[FNACIMIENTO],[EMAIL],[PASSWORD],[ISDELETED]) VALUES ('" & Nombre & "','" & Apellido1 & "','" & Apellido2 & "','" & cedula & "','" & Fnacimiento & "','" & Email & "','" & Password & "','N')"
        LlenarDS(DS, SQL)

        Return DS
    End Function


    Public Function Insertar_Producto(ByVal Codigo As String, ByVal descripcion As String, ByVal precio As Integer, ByVal tipo As String, ByVal foto As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "INSERT INTO [dbo].[PRODUCTOS] ([CODIGO],[DESCRIPCION],[UNIDAD],[PRECIO],[TIPO],[IMAGEN],[ISDELETED]) VALUES ('" & Codigo & "','" & descripcion & "','1','" & precio & "','" & tipo & "','" & foto & "','N')"
        LlenarDS(DS, SQL)

        Return DS
    End Function

    Public Function Borrar_Empleado(ByVal Valor As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "UPDATE PERSONAS SET ISDELETED= 'Y' WHERE CEDULA= '" & Valor & "'"
        LlenarDS(DS, SQL)

        Return DS
    End Function

    Public Function Borrar_Producto(ByVal Valor As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "UPDATE PRODUCTOS SET ISDELETED= 'Y' WHERE CODIGO = '" & Valor & "'"
        LlenarDS(DS, SQL)

        Return DS
    End Function

    Public Function Actualizar_Empleado(ByVal Valor0 As String, ByVal Valor1 As String, ByVal Valor2 As String, ByVal Valor3 As String, ByVal Valor4 As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "UPDATE PERSONAS SET NOMBRE =  '" & Valor0 & "' , APELLIDO1 =  '" & Valor1 & "'  , APELLIDO2 =  '" & Valor2 & "'  , EMAIL=  '" & Valor3 & "' WHERE CEDULA = '" & Valor4 & "'"
        LlenarDS(DS, SQL)

        Return DS
    End Function

    Public Function Actualizar_Producto(ByVal Valor0 As String, ByVal Valor1 As String, ByVal Valor2 As String, ByVal Valor3 As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "UPDATE PRODUCTOS SET DESCRIPCION =  '" & Valor1 & "' , CODIGO =  '" & Valor0 & "'  , PRECIO =  '" & Valor2 & "' WHERE CODIGO = '" & Valor3 & "'"
        LlenarDS(DS, SQL)

        Return DS
    End Function

    Public Sub Insertar_Carrito(ByVal IDProducto As String, ByVal IDCliente As String, ByVal Cantidad As String)
        Dim sentencia As String
        sentencia = "EXEC AgregarCarrito '" & IDCliente & "','" & IDProducto & "','1','" & Cantidad & "'"
        EjecutaSQL(sentencia)
    End Sub

    Public Sub Actualizar_Carrito(ByVal IDProducto As String, ByVal IDCliente As String, ByVal Cantidad As String)
        Dim sentencia As String
        sentencia = "EXEC ActualizarCarrito '" & IDCliente & "','" & IDProducto & "','1','" & Cantidad & "'"
        EjecutaSQL(sentencia)
    End Sub

    Public Sub Eliminar_Carrito(ByVal IDProducto As String, ByVal IDCliente As String, ByVal Cantidad As String)
        Dim sentencia As String
        sentencia = "EXEC EliminarCarrito '" & IDCliente & "','" & IDProducto & "','1','" & Cantidad & "'"
        EjecutaSQL(sentencia)
    End Sub

    Public Function ContarCarrito(ByVal IDCliente As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet
        SQL = "EXEC ContarProductosCarrito '" & IDCliente & "'"
        LlenarDS(DS, SQL)
        Return DS
    End Function

    Public Function TotalCarrito(ByVal IDCliente As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet
        SQL = "EXEC PrecioCarrito '" & IDCliente & "'"
        LlenarDS(DS, SQL)
        Return DS
    End Function

    Public Function DatosCliente(ByVal IDCliente As String) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet
        SQL = "EXEC DatosCliente '" & IDCliente & "'"
        LlenarDS(DS, SQL)
        Return DS
    End Function


    Public Sub ProcesarOrden(ByVal IDCliente As String)
        Dim sentencia As String

        sentencia = "EXEC ProcesarOrden '" & IDCliente & "'"
        EjecutaSQL(sentencia)

    End Sub


End Module

<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="22308000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="MainVI" Type="Folder">
			<Item Name="MainVI.vi" Type="VI" URL="../MainVI/MainVI.vi"/>
		</Item>
		<Item Name="SubVI" Type="Folder">
			<Item Name="Login.vi" Type="VI" URL="../SubVI/Login.vi"/>
			<Item Name="Lowpass Filter.vi" Type="VI" URL="../SubVI/Lowpass Filter.vi"/>
			<Item Name="Mathematical Model Air Heater.vi" Type="VI" URL="../SubVI/Mathematical Model Air Heater.vi"/>
			<Item Name="PI Controller.vi" Type="VI" URL="../SubVI/PI Controller.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="ADODBConnection Close.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBConnection Close.vi"/>
				<Item Name="ADODBConnection Create.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBConnection Create.vi"/>
				<Item Name="ADODBConnection Destroy.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBConnection Destroy.vi"/>
				<Item Name="ADODBConnection Execute.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBConnection Execute.vi"/>
				<Item Name="ADODBConnection Open.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBConnection Open.vi"/>
				<Item Name="ADODBField Get String Value.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBField Get String Value.vi"/>
				<Item Name="ADODBFields Get Count.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBFields Get Count.vi"/>
				<Item Name="ADODBFields Item.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBFields Item.vi"/>
				<Item Name="ADODBRecordset Destroy.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBRecordset Destroy.vi"/>
				<Item Name="ADODBRecordset Get Fields.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBRecordset Get Fields.vi"/>
				<Item Name="ADODBRecordset Get Row String Value.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBRecordset Get Row String Value.vi"/>
				<Item Name="ADODBRecordset Get Table String Value.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/ADODBRecordset Get Table String Value.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Data Type.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/Data Type.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get Cert AbsPath.vi" Type="VI" URL="/&lt;vilib&gt;/OPCUA/server/subVI/Get Cert AbsPath.vi"/>
				<Item Name="NI OPC UA Client.lvlib" Type="Library" URL="/&lt;vilib&gt;/OPCUA/NI OPC UA Client.lvlib"/>
				<Item Name="NI OPC UA Utility.lvlib" Type="Library" URL="/&lt;vilib&gt;/OPCUA/NI OPC UA Utility.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NILVSim.dll" Type="Document" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/NILVSim.dll"/>
				<Item Name="NodeId.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/NodeId.ctl"/>
				<Item Name="OPC UA Client Refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/OPC UA Client Refnum.ctl"/>
				<Item Name="OPC UA StatusCode.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/OPC UA StatusCode.ctl"/>
				<Item Name="SIM limit type.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM limit type.ctl"/>
				<Item Name="SQL Close.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/SQL Close.vi"/>
				<Item Name="SQL Open.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/SQL Open.vi"/>
				<Item Name="SQL Select.vi" Type="VI" URL="/&lt;vilib&gt;/SQLToolkit.llb/SQL Select.vi"/>
				<Item Name="Subscription Data Change.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/Subscription Data Change.ctl"/>
				<Item Name="Subscription ID.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/Subscription ID.ctl"/>
				<Item Name="Time Out.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/Time Out.ctl"/>
				<Item Name="Write Status.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/Write Status.ctl"/>
				<Item Name="Write Variant Request.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/Write Variant Request.ctl"/>
				<Item Name="Write Variant Result.ctl" Type="VI" URL="/&lt;vilib&gt;/OPCUA/controls/Write Variant Result.ctl"/>
			</Item>
			<Item Name="ni_opcua.dll" Type="Document" URL="ni_opcua.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>

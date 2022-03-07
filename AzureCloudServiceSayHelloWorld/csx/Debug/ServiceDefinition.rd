<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="AzureCloudServiceSayHelloWorld" generation="1" functional="0" release="0" Id="b9c1ce17-4021-4155-b100-939ee1a35faa" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureCloudServiceSayHelloWorldGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="SayHelloWorld:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/LB:SayHelloWorld:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="SayHelloWorld:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/MapSayHelloWorld:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="SayHelloWorldInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/MapSayHelloWorldInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:SayHelloWorld:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/SayHelloWorld/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapSayHelloWorld:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/SayHelloWorld/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapSayHelloWorldInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/SayHelloWorldInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="SayHelloWorld" generation="1" functional="0" release="0" software="C:\Users\zyichang\source\repos\zyichang\C-sharp-selfstudy\AzureCloudServiceSayHelloWorld\csx\Debug\roles\SayHelloWorld" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;SayHelloWorld&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;SayHelloWorld&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/SayHelloWorldInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/SayHelloWorldUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/SayHelloWorldFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="SayHelloWorldUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="SayHelloWorldFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="SayHelloWorldInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="022db6d1-e338-45e7-9d6d-a0efd70a9478" ref="Microsoft.RedDog.Contract\ServiceContract\AzureCloudServiceSayHelloWorldContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="a1680b15-460a-42cb-b470-38b240421639" ref="Microsoft.RedDog.Contract\Interface\SayHelloWorld:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureCloudServiceSayHelloWorld/AzureCloudServiceSayHelloWorldGroup/SayHelloWorld:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>
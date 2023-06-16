# MailOnPremise - Mail
> Business Application

create mail-xsuaa application plan sevice instance
cf create-service SERVICE PLAN SERVICE_INSTANCE [-b BROKER] [-c PARAMETERS_AS_JSON] [-t TAGS]
```
cf create-service xsuaa application mail-xsuaa
cf create-service destination lite mail-destination
cf create-service connectivity lite mail-connectivity
```

create service keys
cf create-service-key SERVICE_INSTANCE SERVICE_KEY [-c PARAMETERS_AS_JSON]

```
cf create-service-key mail-xsuaa mail-xsuaa-key
cf create-service-key mail-destination mail-destination-key
cf create-service-key mail-connectivity mail-connectivity-key
```

list service keys:
```
cf service-keys mail-xsuaa
cf service-keys mail-destnation
cf service-keys mail-connectivity
```
list services:
```
cf services
```

or
```
cf service mail-xsuaa
cf service mail-destination
cf service mail-connectivity
```

```
npm install
npm install @sap-cloud-sdk/mail-client
npm install @sap-cloud-sdk/connectivity
npm install @sap/xssec​
npm install passport
```

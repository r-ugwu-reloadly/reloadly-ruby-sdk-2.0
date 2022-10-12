
# Getting Started with reloadly-sdk

## Building

The generated code depends on a few Ruby gems. The references to these gems are added in the gemspec file. The easiest way to resolve the dependencies, build the gem and install it is through Rake:

1. Install Rake if not already installed: `gem install rake`
2. Install Bundler if not already installed: `gem install bundler`
3. From terminal/cmd navigate to the root directory of the SDK.
4. Invoke: `rake install`

Alternatively, you can build and install the gem manually:

1. From terminal/cmd navigate to the root directory of the SDK.
2. Run the build command: `gem build reloadly_sdk.gemspec`
3. Run the install command: `gem install reloadly_sdk-1.0.0.gem`

![Installing Gem](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&gemVer=1.0.0&gemName=reloadly_sdk&step=buildSDK)

## Installation

The following section explains how to use the reloadly_sdk ruby gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting `File -> Close Project`. Next, click on `Create New Project` to create a new project from scratch.

![Create a new project in RubyMine - Step 1](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&step=createNewProject0)

Next, provide `TestApp` as the project name, choose `Rails Application` as the project type, and click `OK`.

![Create a new Rails Application in RubyMine - Step 2](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&step=createNewProject1)

In the next dialog make sure that the correct Ruby SDK is being used (>= 2.6 and < 3.1) and click `OK`.

![Create a new Rails Application in RubyMine - Step 3](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&step=createNewProject2)

### 2. Add reference of the gem

In order to use the Tester gem in the new project we must add a gem reference. Locate the `Gemfile` in the Project Explorer window under the `TestApp` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: `gem 'reloadly_sdk', '1.0.0'`

![Add new reference to the Gemfile](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&gemVer=1.0.0&gemName=reloadly_sdk&step=addReference)

### 3. Adding a new Rails Controller

Once the `TestApp` project is created, a folder named `controllers` will be visible in the *Project Explorer* under the following path: `TestApp > app > controllers`. Right click on this folder and select `New -> Run Rails Generator...`.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&gemVer=1.0.0&gemName=reloadly_sdk&step=addCode0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the `controller` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&step=addCode1)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide `Hello` and include an action named `Index` and click `OK`.

![Add a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&gemVer=1.0.0&gemName=reloadly_sdk&step=addCode2)

A new controller class named `HelloController` will be created in a file named `hello_controller.rb` containing a method named `Index`. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?workspaceFolder=ReloadlySdk&gemName=reloadly_sdk&step=addCode3)

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `environment` | Environment | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |

The API client can be initialized as follows:

```ruby
client = ReloadlySdk::Client.new(
  environment: Environment::PRODUCTION,
)
```

## List of APIs

* [Airtime-Account Balance](doc/controllers/airtime-account-balance.md)
* [Airtime-Countries](doc/controllers/airtime-countries.md)
* [Airtime-Operators](doc/controllers/airtime-operators.md)
* [Airtime-FX Rates](doc/controllers/airtime-fx-rates.md)
* [Airtime-Commissions](doc/controllers/airtime-commissions.md)
* [Airtime-Promotions](doc/controllers/airtime-promotions.md)
* [Airtime-Topups](doc/controllers/airtime-topups.md)
* [Airtime-Transactions](doc/controllers/airtime-transactions.md)
* [Gift Cards-Account Balance](doc/controllers/gift-cards-account-balance.md)
* [Gift Cards-Countries](doc/controllers/gift-cards-countries.md)
* [Gift Cards-Products](doc/controllers/gift-cards-products.md)
* [Gift Cards-Redeem Instructions](doc/controllers/gift-cards-redeem-instructions.md)
* [Gift Cards-Discounts](doc/controllers/gift-cards-discounts.md)
* [Gift Cards-Transactions](doc/controllers/gift-cards-transactions.md)
* [Gift Cards-Orders](doc/controllers/gift-cards-orders.md)
* [Airtime-Number Lookup](doc/controllers/airtime-number-lookup.md)
* [Utility Payments-Account Balance](doc/controllers/utility-payments-account-balance.md)
* [Utility Payments-Utility Billers](doc/controllers/utility-payments-utility-billers.md)
* [Utility Payments-Pay Bill](doc/controllers/utility-payments-pay-bill.md)
* [Utility Payments-Transactions](doc/controllers/utility-payments-transactions.md)
* [Authentication](doc/controllers/authentication.md)

## Classes Documentation

* [Utility Classes](doc/utility-classes.md)
* [HttpResponse](doc/http-response.md)
* [HttpRequest](doc/http-request.md)


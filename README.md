
<p align="center">
  <img src="https://app.expeditedaddons.com/realemail.png"/>
  
</p>

<h1 align='center'>Real Email</h1>

## Reduce bounced emails and errors by validating emails against MX records.

## Requirements

- An API Key from Heroku
    - Add from: https://elements.heroku.com/addons/realemail

- Ruby v2.x or greater


## Installation

```ruby
# In your Gemfile
gem 'real_email', git: 'https://github.com/mbuckbee/Real-Email-Gem.git'
```    

## Usage

### Input Parameter Descriptions

| Index       | Name    | Example | Description |
| --------------- | ------- | -------- |--------|
|0|`email`|string|The email address|
|1|`fix_typos`|boolean|Automatically attempt to fix typos in the address|



### Making a Request

```ruby
$ > require 'real_email'
=> true

# Note: the 'Controller' here is not a reference to Rails controllers
# but an internal structure, won't interfere with your Rails app and will 
# work fine in a standalone ruby app or another framework

$ > re = RealEmail::APIController.new
=> #<RealEmail::APIController:0x007fb6b4314440>

$ > result = re.lookup("support@expeditedaddons.com", false)
=> #<RealEmail::Result:0x007fb6b5d2c990 @valid=true, @domain_error=false, @domain="expeditedaddons.com", @is_freemail=false, @syntax_error=false, @email="support@expeditedaddons.com", @is_disposable=false, @typos_fixed=nil>
```

### Using Results

```ruby
$ > result.valid
=> true

$ > result.domain_error
=> false

$ > result.domain
=> "expeditedaddons.com"

$ > result.is_freemail
=> false

$ > result.syntax_error
=> false

$ > result.email
=> "support@expeditedaddons.com"

$ > result.is_disposable
=> false

$ > result.typos_fixed
=> nil
```



## Result Attribute Descriptions

| Attribute       | Type    | Description |
| --------------- | ------- | -------- |
|`valid`|boolean|If the email address passes all tests for syntax, domain validity, disposability and free email|
|`domain_error`|boolean|If the domain of the email address is valid and functional|
|`domain`|string|The domain evaluated for validity|
|`is_freemail`|boolean|If the evaluated email is from a free email service|
|`syntax_error`|boolean|If the email address had a syntax error (missing @ symbol, etc.)|
|`email`|string|The email that was evaluated|
|`is_disposable`|boolean|If the email is from a disposable email service.|
|`typos_fixed`|boolean|True if typos have been fixed|



## Live Interactive Testing

Doublecheck results, use a Live Proxy and check your API Key with the interactive documentation at:

http://docs.realemailexp.apiary.io/

You will need your `REALEMAIL_API_KEY` from the setup screen where you've provisioned the Real Email add-on.

## Troubleshooting

As a sanity check it is sometimes useful to bypass your app stack and check the endpoint, your API Key and parameters directly.

*Test with your browser*

```
# Modify the following to use your actual API Key
'https://realemail.expeditedaddons.com/?api_key=REPLACE_WITH_YOUR_REALEMAIL_API_KEY&email=email%40example.org&fix_typos=false'
```

A successful call will return your requested data with a HTTP result code of `200` and be in `JSON` format. We recommend the [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) extension as a useful tool. 

## In Development

The Real Email gem relies upon the environment variable `ENV['REALEMAIL_API_KEY']` being present and correctly configured to authenticate to the service. You will need to have this variable present in your local environment for the gem to work correctly.

If you're using Heroku, please read their [Guide to Heroku Local](https://devcenter.heroku.com/articles/heroku-local) which has instructions on easily copying your config values to your development environment.

**DOTENV**

[https://github.com/bkeepers/dotenv](https://github.com/bkeepers/dotenv)

If you're trying to use Real Email in your local development or test environment with the [dotenv](https://github.com/bkeepers/dotenv) gem be sure that you are loading the `dotenv-rails` gem with the `rails-now` requirement. 

```ruby
# Example Gemfile excerpt

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'iptoearth'
```

**FOREMAN**

[https://github.com/ddollar/foreman](https://github.com/ddollar/foreman)

If you're having issues with configuring `dotenv`, you might want to try [foreman](https://github.com/ddollar/foreman) which will also autoload `.env` files in your local environment.


**Test in the Rails console**

Launch `rails c` in your development project directory and at the prompt enter `ENV[REALEMAIL_API_KEY]` which, if you've configured your development environment correctly should display your API Key.

## Issues and Security Concerns

Please email [support@expeditedaddons.com](mailto:support@expeditedaddons.com)

## License

The Real Email gem is licensed under the MIT license.

## Additional Add-ons

If you found Real Email useful, please check out our other similarly structured services and gems.

<table>
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/qrackajack_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/qrackajack'>QRACKAJACK</a></h5>
      <p>Generate QR codes for use anywhere.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/weightsandmeasures_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/weightsandmeasures'>WEIGHTS & MEASURES</a></h5>
      <p>Conversational interface to convert between units of measure.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/scrapetastic_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>SCRAPETASTIC</a></h5>
      <p>Pull structured data from any website.</p>
    </td>

  </tr>
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/useragentidentifier_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/useragentidentifier'>USER AGENT IDENTIFIER</a></h5>
      <p>Boost User Agent identification with our always up to date UA parsing.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/ipinvestigator_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/ipinvestigator'>IP INVESTIGATOR</a></h5>
      <p>Check if an IP address is hosting Proxies, Bots or Malware.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/resizer_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>RESIZER</a></h5>
      <p>Resize images for Retina use, thumbnails and social promotion.</p>
    </td>

  </tr>  
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/urlxray_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/urlxray'>URL X-RAY</a></h5>
      <p>Pull website status and domain information for any URL.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/webtopdf_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/webtopdf'>WEB TO PDF</a></h5>
      <p>Generate PDF Documents from Webpages.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/watermarker_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/watermarker'>WATERMARKER</a></h5>
      <p>Identify and protect images by adding a watermark to them.</p>
    </td>

  </tr>    
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/iptoearth_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/iptoearth'>IP TO EARTH</a></h5>
      <p>Find the Country and City of origin for an IP Address.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/geocody_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/geocody'>GEOCODY</a></h5>
      <p>Convert mailing addresses into Lat,Long Coordinates.</p>
    </td>
    
    <td align='center' width='33%' cellpadding='10'>
       <img src="https://app.expeditedaddons.com/realemail_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/realemail'>REAL EMAIL</a></h5>
      <p>Reduce bounced emails and errors by validating emails against MX records.</p>
    </td>

  </tr>    

</table>






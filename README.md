
# Product Service

A little Containerised Laravel-Lumen Product Service


## Features

- Logging Errors and Response Request Outputs
- Api Versioning
- Api Documentation on /docs
- Generalized Api Responses

  
## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`APP_KEY => Random 32 characters string`

`SCRIBE_AUTH_KEY => When regenerate Scribe Api Documentation.`

`APP_DEBUG => For simulate Product mode that should be false.`  
## Installation

Install my-project with npm

```bash
docker-compose build app && docker-compose up -d
```
    
## Running Tests

To run tests, run the following command

```bash
  "./vendor/bin/phpunit"
```

  
## Authors

- [@erenkucukersoftware](https://www.github.com/erenkucukersoftware)

  
## License

[MIT](https://choosealicense.com/licenses/mit/)

  


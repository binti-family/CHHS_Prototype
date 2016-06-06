## Dependencies

### Postgres with PostGIS extensions

On Debian 8,

```
sudo apt-get install postgresql-9.4 postgis
```

## Data

### Facilities

There are fewer than 3000 facilities, so for you convenience I've included them (post-geocoding) in `config/data/facilities.yml`.

To load this file into your database:

```
rake load_facilities_dump
```

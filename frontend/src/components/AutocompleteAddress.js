import React, { useState, useRef, useEffect } from 'react';
import { LoadScript, Autocomplete } from '@react-google-maps/api';

const libraries = ['places'];

export default function AutocompleteAddress({ onPlaceSelected }) {
  const [autocomplete, setAutocomplete] = useState(null);
  const inputRef = useRef(null);

  const onLoad = (autoC) => setAutocomplete(autoC);

  const onPlaceChanged = () => {
    if (autocomplete !== null) {
      const place = autocomplete.getPlace();
      if (!place.address_components) return;

      const components = place.address_components;

      let calle = '';
      let numero = '';
      let ciudad = '';
      let codigoPostal = '';

      components.forEach(component => {
        const types = component.types;
        if (types.includes('route')) {
          calle = component.long_name;
        }
        if (types.includes('street_number')) {
          numero = component.long_name;
        }
        if (types.includes('locality')) {
          ciudad = component.long_name;
        }
        if (types.includes('postal_code')) {
          codigoPostal = component.long_name;
        }
      });

      onPlaceSelected({ calle, numero, ciudad, codigoPostal });
    }
  };
// utilizacion del Api de Google: Places API  que permite cargar la informacion en base a una busqueda
  return (
    <LoadScript googleMapsApiKey="AIzaSyBBOZRgnZCbvOF_Lnph_PxVe5-zG0tLmWw" libraries={libraries}>
      <Autocomplete onLoad={onLoad} onPlaceChanged={onPlaceChanged}>
        <input
            type="text"
            placeholder="Ingresa tu dirección"
            ref={inputRef}
            style={{ width: '100%', padding: '0.5rem', marginBottom: '1rem' }}
        />
      </Autocomplete>
    </LoadScript>
  );
}

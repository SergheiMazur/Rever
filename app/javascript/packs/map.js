import GMaps from 'gmaps/gmaps.js';


const styles = [
  {
    "featureType": "all",
    "elementType": "all",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "all",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#004600"
      }
    ]
  },
  {
    "featureType": "all",
    "elementType": "labels.text",
    "stylers": [
      {
        "saturation": "62"
      }
    ]
  },
  {
    "featureType": "all",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "gamma": "1.81"
      },
      {
        "lightness": "100"
      },
      {
        "saturation": "100"
      },
      {
        "color": "#00ff0b"
      }
    ]
  },
  {
    "featureType": "all",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "saturation": "-100"
      },
      {
        "lightness": -33
      },
      {
        "weight": "2.53"
      },
      {
        "gamma": 0.8
      },
      {
        "color": "#061d00"
      }
    ]
  },
  {
    "featureType": "all",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#222222"
      }
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "geometry",
    "stylers": [
      {
        "lightness": 30
      },
      {
        "saturation": 30
      }
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "visibility": "on"
      },
      {
        "lightness": "-32"
      },
      {
        "saturation": "48"
      },
      {
        "color": "#222222"
      }
    ]
  },
  {
    "featureType": "landscape.man_made",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#222222"
      }
    ]
  },
  {
    "featureType": "landscape.natural",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#222222"
      }
    ]
  },
  {
    "featureType": "landscape.natural.landcover",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#222222"
      }
    ]
  },
  {
    "featureType": "landscape.natural.terrain",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#222222"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "saturation": 20
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "lightness": 20
      },
      {
        "saturation": -20
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "lightness": 10
      },
      {
        "saturation": -30
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "saturation": "100"
      },
      {
        "color": "#00FF00"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "saturation": 25
      },
      {
        "lightness": 25
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#2bff00"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#222222"
      },
      {
        "weight": "4.46"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "saturation": "100"
      },
      {
        "color": "#00FF00"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "all",
    "stylers": [
      {
        "lightness": -20
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "lightness": "-100"
      },
      {
        "color": "#001a03"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "weight": "1.70"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#2bff00"
      }
    ]
  }
]


const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({
    el: '#map',
    lat: 0,
    lng: 0,
    zoomControl: false,
    mapTypeControl: false,
    scaleControl: false,
    streetViewControl: false,
    rotateControl: false,
    fullscreenControl: false
  });


  map.addStyle({
    styles: styles,
    mapTypeId: 'map_style'
  });

  map.setStyle('map_style');

  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

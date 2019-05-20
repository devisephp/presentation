@section('template')
<div class="relative shadow-xl border-w border-8">
  <three-d-logos :devise="devise"></three-d-logos>
</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{I}'],
    description: 'Couple of Logos in 3D',
    fields: {
      enableControls: {
        type: 'checkbox',
        label: 'Enable Controls',
        instructions: 'Allows you to move around the model with your mouse',
        default: {
          checked: true
        }
      },
      speed: {
        type: 'number',
        label: 'Speed',
        default: {
          text: '0.005'
        }
      },
      axis: {
        type: 'select',
        label: 'Axis to Spin',
        options: {
          z: 'Z (default)',
          x: 'X',
          y: 'Y',
          all: 'All',
        },
        default: {
          value: 'z'
        }
      },
    }
  }
</script>
@endsection
@section('template')
<div>
  <pre style="line-height:0;width:70vw;">
    <code v-html="devise.code.text" style="line-height:1.8em; font-size:1em; padding:2em; max-height:500px;"></code>
  </pre>
</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Tsm~50}'],
    description: 'Code Block built to go inside a reveal slide',
    fields: {
      code: {
        type: 'textarea',
        label: 'Code Block'
      }
    }
  }
</script>
@endsection
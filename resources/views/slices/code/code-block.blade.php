@section('template')
<div>
  <pre style="line-height:0;width:70vw;">
    <code v-html="devise.code.text" style="line-height:1.8em; font-size:1em; padding:2em;"></code>
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
    },
    data: function () {
      return {
        codeblock: null
      }
    },
    created: function () {
      var self = this
      axios.get('/code-samples/test.txt').then(function (response) {
        self.codeblock = response.data
      })
    }
  }
</script>
@endsection
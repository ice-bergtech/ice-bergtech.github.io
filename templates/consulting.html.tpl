<!DOCTYPE html>
<html lang="en">

<head>
  {% include 'lib/head-inner.html.tpl' %}
  <title>Iceberg Tech: Consulting</title>
</head>

<body>
  <div class="container-image">
    {% include "lib/header.html.tpl" %}

    <section class="section rounded my-work" data-section="section2" id="consulting">
      <div class="container">
        <div class="section-heading">
          <h2>Consulting</h2>
          <div class="line-dec"></div>
          <span>Make your work my work</span>
        </div>
        <div class="container">
          {%- for key, item in consulting.items() %}
          <!-- {{ key }} -->
          {%- if item.side == 'right' %}
          <div class="horizontalLine"></div>
          <div class="row align-items-center">
            <div class="col">
                <h4>{{ item.title }}</h4>
                {{ item.description }}
            </div>
            <div class="col">
                <img src="{{ item.image }}" alt="" />
            </div>
          </div>
          {%- else %}
          <div class="horizontalLine"></div>
          <div class="row align-items-center">
            <div class="col">
                <img src="{{ item.image }}" alt="" />
            </div>
            <div class="col">
                <h4>{{ item.title }}</h4>
                {{ item.description }}
            </div>
          </div>
          {%- endif %}
          {%- endfor %}
        </div>
      </div>
    </section>

    <section>
      {% include "lib/footer.html.tpl" %}
    </section>
  </div>

  <!-- Scripts -->
  <!-- Here so it can see the scroll to top button -->
  <script src="assets/js/custom.js"></script>

</body>
</html>

$(document).ready ->
  $(".entry_app_list").children(".well").each(->
    if $(this).data("tag") == "downloaded"
      $(this).addClass("downloaded");
  )

  $(".apk_download_link").bind("click", ->
    window.location.href = $(this).data("download-link")
    $(this).closest(".well").addClass("downloaded")
    $.ajax({
      type: "PUT",
      url: "/apks/" + $(this).data("id"),
      data: "tag=downloaded"
    })
  )

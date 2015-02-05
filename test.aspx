<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Jquery_modalBox.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:beige">
    <form id="form1" runat="server">
    <div>
        <div style="padding-top: 20%; padding-left: 25%">
            <a id="btnSecilenleriSil" title="Seçilenleri Sil" href="#" style="margin:8px 14px 4px 8px">Sil Butonumuz</a>
        </div>
        <script src="ModalBox/jquery-1.10.1.min.js"></script>
        <script src="ModalBox/jQuery.bPopup.js"></script>
        <link href="ModalBox/modalBox.css" rel="stylesheet" />

        <script>
            $(document).ready(function () {
                $('#btnSecilenleriSil').click(function () {
                    $('#element_to_pop_up_Sil').bPopup({
                        speed: 450,
                        transition: 'slideToggle'
                    });
                    //$("#btnSil").click(function () {

                    //modal box daki sil butonu tıklanıldığında burada gerekli silme işlemlerini yaptırabilirsiniz.
                    //ajax ile
                    //}

                });
            });
        </script>

          <!--   Seçileni silme modal box ı   -->
        <!--  modal box ın içindeki elemanların özelliklerini istediğiniz şekilde css ile değiştirebilirsiniz.  -->
          <style type="text/css">
              #element_to_pop_up_Sil {
                  display: none;
              }

              .btnSil {
                  border-radius: 7px;
                  font: bold 131% sans-serif;
                  padding: 1px 6px 2px;
                  background-color: #2b91af;
                  color: #fff;
                  cursor: pointer;
                  text-align: center;
                  text-decoration: none;
                  position: absolute;
                  left: 14px;
              }

                  .btnSil:hover {
                      background-color: #1e1e1e;
                  }

              #elementsInSil {
                  box-shadow: 0px 7px 25px #2C9BA3;
                  border-radius: 10px;
                  border-style: inherit;
              }
          </style>

        <!-- modal box ın içerisini istediğiniz şekilde tasarlayabilirsiniz.  -->
          <div id="element_to_pop_up_Sil">

              <div id="elementsInSil" style="background-color: white; padding: 20px 20px 20px 20px; width: 94%">
                  <h4 style="text-align: center">Seçilenleri silmek istediğinize</h4>
                  <h4 style="text-align: center">emin misiniz? </h4>
                  <hr />
                  <asp:Button ID="btnSil" ClientIDMode="Static" class="send" runat="server" Text="Sil" />
                  <asp:Button ID="Button1" class="b-close" runat="server" Text="İptal" />
                  <br />
              </div>
          </div>
        <!-- modal box ın sonu  -->

    </div>
    </form>
</body>
</html>

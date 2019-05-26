var preElement = undefined;
function ClickTraLoiCmt(id, BVId) {
    console.log(BVId);
    console.log(id);
    if(preElement != undefined){
        preElement.parentNode.removeChild(preElement);
    }
    var html =
    `<div class="media mt-4" id="repcomment`+ id + `" style="width: 100%;">
            <div style="width: 100%;">
                <h5 class="card-header"><strong>Viết bình luận :</strong></h5>
                 <div class="card-body">
                     <form  method="POST" id="form-parent-comment" action="/bai-viet-chi-tiet/` + BVId +`">
                        <div class="form-group">
                              <textarea class="form-control" name="comment" rows="3"></textarea>
                        </div>
                         <input type="hidden" name="ParentCommentID" value="` + id + `" />
                          <button style="float: right;margin-right: 10px;width: 100px;" type="submit"
                                 class="btn btn-primary">Đăng</button>
                     </form>
                 </div>
            </div>
    </div>`;
    var ele = document.getElementById("comment" + id);
    ele.innerHTML += html;
    preElement = document.getElementById("repcomment" + id);
}

function AddParentComment() {
    var comments = document.getElementById();
}

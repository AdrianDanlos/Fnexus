<form action=" " id="publicateAd">
    <div>
        <div>
            <input type="button"><input type="text" name="adImg" id="adImg"><input type="button">
        </div>
    </div>
    <p><input type="text" name="adTitle" id="adTitle"></p>
    <p><input type="text" name="adDescription" id="adDescription"></p>
    <p><input type="text" name="companyName" id="companyName"><input type="text" name="publicationDate" id="publicationDate"></p>
    <p><label>
            Categoria<select name="tags" id="tags">
                <option value="">Selecciona</option>
                <?= add_categorias_bar("option") ?>
            </select></label><input type="submit" name="action" id="insertAd" value="Guardar"></p>
</form>
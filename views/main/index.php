<p>Главная страница</p>
 
<table id="flat" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>№</th>
                <th>Комплекс</th>
                <th>Дом</th>
                <th>Номер кв.</th>
                <th>м <sup>2</sup></th>
                <th>Комнат</th>
                <th>Год сдачи</th>
                <th>Этаж</th>
                <th>Добавлена</th>
                <th>Обновлена</th>
            </tr>
        </thead>
        <tbody>

        	<? foreach ($flats as $key => $value) {  ?> 
	            <tr>
	                <td><?= $value['id']; ?></td> 
	                <td><?= $value['complex']; ?></td> 
	                <td><?= $value['dom']; ?></td> 
	                <td><?= $value['number']; ?></td> 
	                <td><?= $value['square']; ?></td> 
	                <td><?= $value['rooms']; ?></td> 
	                <td><?= $value['year']; ?></td> 
	                <td><?= $value['floar']; ?></td> 
	                <td><?= $value['data_create']; ?></td> 
	                <td><?= $value['date_update']; ?></td> 
	            </tr>
	       <? } ?>     
        </tbody>
 
    </table>

<script>
$(document).ready( function () {
	$('#flat').DataTable( {
	    select: true
	} );
} );

</script>
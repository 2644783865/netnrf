### z.Grid()

> ������������ٷ����ĵ�����һ��

```js
var gd1 = new z.Grid();

gd1.isinit  //��һ��Ϊ true ,����ɺ�ʼ��Ϊ false
gd1.id  //�������#ID��Ĭ�� #Grid1
gd1.type    //������ͣ�Ĭ�� datagrid ��֧�֣�datagrid��treegrid��propertygrid��datalist
gd1.autosize    //�Զ�������С��Ĭ�� xy ��֧�֣�xy(�����߳���)��x��y��p(��丸����)
gd1.autosizePid //������#ID��Ĭ�� #myBody��Ϊʵ���Զ�������С����Ҫ
gd1.columnsExists   //�Ƿ��ѯ�����ã���һ�β�ѯ�����ú�ֵΪ true ��Ϊtrue ����治�ڲ�ѯ������
gd1.dataCache   //�첽����õ�������

gd1.onComplete(function(obj){ })    //��ɻص����ɶ�ε��ã�ע�⣺��������ٴε��ð󶨻������ѭ������������

gd1.bind()  //���ذ󶨷���
gd1.load()  //���ط������������Զ����� bind ����

gd1.func()  //�������ã���ٷ��ṩ�ķ���һ�£����ӣ�
gd1.func('getSelected') //��ȡѡ����
gd1.func('updateRow', {index:1, row:{}}) //������

//��ѯ��������չ
gd1.queryMark   //������ѯ��ǣ�Ĭ�� true
gd1.queryData   //��ѯ�����Ĭ����ȡ�����У����Զ��壨array���ͣ���Ҳ�������ã����⣩������string���ͣ������������ѯ�����ٲ�ѯ���ݵ���������ñ�����ͬ����������õõ���ѯ������
gd1.QueryBuild()    //������ѯ��壨����ʼ����ѯ��壬����ֵ gd1.query ��ֻ�� gd1.query ����Ϊ��ʱ�Żᴴ�� ��
gd1.QueryOpen(field)    //�򿪲�ѯ��壨�Զ����� gd1.QueryBuild ������; field����ѡ��ָ���ѯ�����ֶ�������λ�к����ñ༭
gd1.QueryWhere()    //��ȡ��ѯ��������
gd1.QueryOk = function () { }   //�����ѯ���ȷ���Ļص�����ѡ���Զ���ȷ���¼�����д���¼���Ĭ�ϻ�ȡ��ѯ������������һҳ
gd1.query   //query����Ϊ��ѯ����������� gd1.QueryBuild() �� gd1.QueryOpen()������Ż���ֵ
z.queryin   //ָ��򿪵Ĳ�ѯ���,���� gd1.QueryOpen() ����ʱ��z.queryin = gd1.query���������Ĳ�ѯ�����Ӧ��ָ��
gd1.query.grid  //��ѯ������� gd1 ͬ���Ͷ���
gd1.query.id    //ָ���ѯ����������ID
gd1.query.md    //��ѯ���ģ̬�����new z.Modal() ���صĶ���
```

��ѯ��������չ

### z.GridQueryMark(gd)

> ������ѯ���

### z.GridQueryBuild(gd)

> ������ѯ���

### z.GridQueryOpen(gd, field)

> �򿪲�ѯ��壬�Զ����� GridQueryBuild ����������������field ָ��ĳ����ѯ���ֶΣ���ѡ

### z.GridQueryWhere(gd)

> �õ���ѯ���Ĳ�ѯ�������齨 z.SqlQuery ����



### z.GridFormat()

> ���õĸ�ʽ�����������Ա����ڡ�״̬������

### z.GridAuto(gd)

> Grid������С�ķ���

### z.GridLoading(gd)

> ��һ�μ��ر��ʱ����ʾ����ͼ�꣬�Ժ�ļ�����ʾ�� DataGrid ����ṩ

### z.GridEditor(gd, index, field, row)

> Grid�༭���ã����� row ��ѡ�����忴�ű�ע��

### z.GridEditorBlank(gd)

> ��հ׽���Grid�༭


### z.Combo()

> ������������ٷ����ĵ�����һ�£��� z.Grid һ������ʽ

```js
var cb1 = new z.Combo();

cb1.type    //���ͣ�Ĭ�� combobox ��֧�֣�combobox��combotree tree

cb1.onComplete(function(obj){ })    //��ɻص����ɶ�ε��ã�ע�⣺��������ٴε��ð󶨻������ѭ������������

cb1.bind()  //���ذ󶨷���
cb1.load()  //���ط������������Զ����� bind ����

cb1.func()  //�������ã���ٷ��ṩ�ķ���һ�£����ӣ�
cb1.func('getValue') //ȡֵ
cb1.func('setValue', 1) //��ֵ
```

### z.TreeVagueCheck(cb, values)

> Treeģ��ѡ�У�����һ���ڵ���ӽڵ��в���ѡ�У���ֵ���ӽڵ㱻ȫ��ѡ�У��ô˷�������ʾ���ο���ɫȨ������

### z.FormAttrAjax()

> formui�� ���󷵻�����Դ&�ص������ڳ�ʼ���첽����󶨵�������Դ���� z.FormAttrBind �������ʹ��

### z.FormAttrBind(target)

> formui�� ����Դ�󶨣����ڳ�ʼ�����ݲ�ͬ�����͵��ö�Ӧ��������� �� z.FormAttrAjax �������ʹ��

### z.FormRequired(color, FormId, dialog)

> ��������֤�����ڱ���ʱ

### z.FindTreeNode(data, value, key)

> �������ڵ�

### z.FormEdit(rowData)

> �����������ѡ�б���һ�У�ֱ�Ӹ�ֵ���༭

### z.FormToJson(FormId)

> ��תΪ JSON , ���ڱ༭����󣬲���ˢ�¼��أ�ֱ�ӻ�ȡ��ֵ���±���һ������

### z.FormClear(FormId)

> ��ձ�����������

### z.FormDisabled(dd, FormId)

> ���ñ������ڲ鿴

### z.FormAutoHeight()

> ģ̬��������߶ȣ�����ģ̬��߶�����Ӧ

### z.FormTitle(ops)

> ���������� opsʾ����{id:"#id", title:"����", required:true}
* icon ����ͼ��
* title ����
* id ��������ID�����
* required �Ƿ���ʾ�������ʾ���֣�Ĭ�� true

### z.Modal()

> ����ģ̬��

```js
var md1 = new z.Modal();

md1.okText  //ok��ť�ı�        
md1.cancelText  //cancel��ť�ı�        
md1.okClick //Ok����ص�
        
md1.cancelClick //Cancel����ص�
md1.title   //��������
md1.content //��������
md1.src //iframe��ַ������content����
md1.heightIframe    //iframe�߶�
md1.complete    //iframe������ɻص�
md1.size    //ģ̬��С Ĭ��2 ��ѡ��1|2|3|4 ;�ֱ��Ӧ��sm��md��lg��full��
md1.showClose   //��ʾ���Ͻǹرհ�ť
md1.showFooter  //��ʾҳ��
md1.showCancel  //��ʾCancel��ť

md1.okClick = function(){}   //ȷ���¼�
md1.cancelClick = function(){}   //ȡ��

md1.append()    //׷�ӵ� body �ϣ��ķ�����������Ը�ֵ�����
md1.show()  //��ʾ
md1.hide()  //����
md1.remove()    //�Ƴ�

md1.modal   //ָ��ģ̬���jQuery�����磺md1.modal.find('div.modal-body') �ҵ�ģ̬����������
```

### z.SqlQuery()

> ���ڱ�ʾSQL��ѯ�����Ķ���

```
// id1='1' AND id2 IN('1','2') AND id2 LIKE '%5%' AND id3>='5' AND id3<='10'
[
    {
        field: "id1",
        relation: "Equal",
        value: 1
    },
    {
        field: "id2",
        relation: "In",
        value: [1, 2]
    },
    {
        field: "id2",
        relation: "Contains",
        value: "5"
    },
    {
        field: "id3",
        relation: "BetweenAnd",
        value: [5, 10]
    }
]

// relation ��ϵ��˵��
{
    Equal: '{0} = {1}',
    NotEqual: '{0} != {1}',
    LessThan: '{0} < {1}',
    GreaterThan: '{0} > {1}',
    LessThanOrEqual: '{0} <= {1}',
    GreaterThanOrEqual: '{0} >= {1}',
    BetweenAnd: '{0} >= {1} AND {0} <= {2}',
    Contains: '%{0}%',
    StartsWith: '{0}%',
    EndsWith: '%{0}',
    In: 'IN',
    NotIn: 'NOT IN'
}
```

### z.DC

> ҳ�����ݻ��棬�������������Դ�ȣ����еĶ�����������
* �����б���������url�ĵ�ַСд��Ϊ�����洢�����б��������Ϣ

### z.btnTrigger

> ��ť������ʶ�������Ӧ�Ĺ��ܰ�ť����ֵ��Ӧ��ť��ID

### z.button(type, fn)

> �����ť�¼�������Ҫ����ĳЩ���ܰ�ť��Ϊ��ť��� disabled ��ʽ������Ч�����������ð�ť�������ԣ��������ö�����ť�������������˵���ť��
```js
z.button('add',functin(){ console.log('�����¼�') })
```

### z.buttonClick(type)

> ģ�������ť������磺z.buttonClick('add') ģ��������

### art(content, fnOk, fnCacle)

> ��Ϣ��ʾ��ѯ����ʾ�������� z.Modal
```js
art('����ɹ�');    //������alert����
//�м����ؼ�������ת����fail��error��success��select
art('fail') //����ʧ�ܣ�һ�����ڷ��صĽ����ʧ��
art('error')    //�������һ�������첽����error�¼�
art('success')  //�����ɹ���һ�����ڱ���ɹ�
//Ϊ������ʾ���ַ��ͳһ������һЩ���������󡢲���ʧ�ܡ� ϵͳ����ȸ�����ʾ

art('ȷ��ɾ����', function(){
    //ȷ��������ɾ������
})
art('�Ƿ񸲸ǣ�', function(){
    //����
},function(){
    //������
})
```
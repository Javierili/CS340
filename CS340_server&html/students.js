module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getStudentClasses(res, mysql, id, context, complete) {
        var sql = "SELECT C.course_name AS Name, C.course_id AS Course Reference Number FROM class C INNER JOIN students_classes SC ON SC.class_id = C.course_id WHERE SC.student_id = ?"
        var inserts = [id];
        mysql.pool.query(sql, inserts, function(error, results, fields) {
            if(error) {
                res.write(JSON.stringify(error));
                res.end();
            }
            context.classes = results;
            complete();
        });

    }

    function getStudents(res, mysql, context, complete) {
        var sql = "SELECT S.name, S.major FROM student S"
        mysql.pool.query(sql, function(error, results, fields) {
            if (error) {
                res.write(JSON.stringify(error));
                res.end();
            }
            context.students = results;
            complete();
        });
    }

    function getBuildings(res, mysql, context, complete) {
        var sql = "SELECT B.name FROM building B"
        mysql.pool.query(sql, function(error, results, fields) {
            if (error) {
                res.write(JSON.stringify(error));
                res.end();
            }
            context.buildings = results;
            complete();
        });
    }

        /* Display one person for the specific purpose of updating people */

    router.get('/:id', function(req, res){
        callbackCount = 0;
        var context = {};
        var mysql = req.app.get('mysql');
        getStudentClasses(res, mysql, context, req.params.id, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 1){
                res.render('student-page', context);
            }

        }
    });

    router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        // context.jsscripts
        var mysql = req.app.get('mysql');
        getStudents(res, mysql, context, complete);
        getBuildings(res, mysql, context, compelte);
        function complete(){
            callbackCount++;
            if(callbackCount >=2){
                res.render('student', context);
            }
        }
    });
    return router;
}